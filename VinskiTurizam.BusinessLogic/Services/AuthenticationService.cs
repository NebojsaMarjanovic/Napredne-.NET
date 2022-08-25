using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Enumerations;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;
using VinskiTurizam.Repository.UnitOfWork;

namespace VinskiTurizam.BusinessLogic
{
    public class AuthenticationService : IAuthenticationService
    {
        private readonly UserManager<Korisnik> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly IConfiguration _configuration;
        private IUnitOfWork _unitOfWork;

        public AuthenticationService(UserManager<Korisnik> userManager, RoleManager<IdentityRole> roleManager, IConfiguration configuration, IUnitOfWork unitOfWork)
        {
            _userManager = userManager;
            _roleManager = roleManager;
            _configuration = configuration;
            _unitOfWork = unitOfWork;
        }


        public async Task<ResponseStatus> RegisterKlijent(RegisterModelKlijent model)
        {

            var userExists = await _userManager.FindByNameAsync(model.Username);
            if (userExists != null)
            {
                return ResponseStatus.UserExists;
            }

            Klijent user = new Klijent()
            {
                Email = model.Email,
                SecurityStamp = Guid.NewGuid().ToString(),
                UserName = model.Username,
                Ime = model.Ime,
                Prezime = model.Prezime,
                PhoneNumber = model.BrTelefona,
                BrLicneKarte = model.BrLicneKarte
            };

            IEnumerable<Claim> claims = new List<Claim>(){
                 new Claim("role", KorisnikRoles.Klijent),
                 new Claim("username", model.Username),
                 new Claim("userId", user.Id)
            };

            ////BAZA KLIJENT
            await _unitOfWork.KlijentRepository.Add(user);


            var result = await _userManager.CreateAsync(user, model.Password);
            if (!result.Succeeded)
                return ResponseStatus.Error;

            await _userManager.AddClaimsAsync(user, claims);

            ////BAZA KLIJENT
            await _unitOfWork.Save();

            return ResponseStatus.Ok;
        }

        public async Task<ResponseStatus>RegisterAdmin(RegisterModelAdmin model)
        {

            var userExists = await _userManager.FindByNameAsync(model.Username);
            if (userExists != null)
            {
                return ResponseStatus.UserExists;
            }

            Admin user = new Admin()
            {
                Email = model.Email,
                SecurityStamp = Guid.NewGuid().ToString(),
                UserName = model.Username,
                Ime = model.Ime,
                Prezime = model.Prezime,
                PhoneNumber = model.BrTelefona,
                DatumZaposlenja = model.DatumZaposlenja
            };

            IEnumerable<Claim> claims = new List<Claim>(){
                 new Claim("role", KorisnikRoles.Admin),
                 new Claim("username", model.Username),
                 new Claim("userId", user.Id)
            };

            ////BAZA KLIJENT
            await _unitOfWork.AdminRepository.Add(user);


            var result = await _userManager.CreateAsync(user, model.Password);
            if (!result.Succeeded)
                return ResponseStatus.Error;

            await _userManager.AddClaimsAsync(user, claims);

            ////BAZA KLIJENT
            await _unitOfWork.Save();

            return ResponseStatus.Ok;
        }



        public async Task<string> Login(LoginModel model)
        {
            {
                var user = await _userManager.FindByNameAsync(model.Username);
                if (user != null && await _userManager.CheckPasswordAsync(user, model.Password))
                {
                    var userClaims = await _userManager.GetClaimsAsync(user);


                    var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("OvoJeNekiStringZaJwtAutentifikaciju"));
                    var token = new JwtSecurityToken(
                    issuer: _configuration["JWT: ValidIssuer"],
                    audience: _configuration["JWT: ValidAudience"],
                    expires: DateTime.Now.AddHours(3),
                    claims: userClaims,
                    signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
                    );


                    return new JwtSecurityTokenHandler().WriteToken(token);
                }
                return null;
            }
        }
    }
}