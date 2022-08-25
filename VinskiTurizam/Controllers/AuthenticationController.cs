using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Swashbuckle.AspNetCore.Annotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic;
using VinskiTurizam.BusinessLogic.Enumerations;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Models;

namespace VinskiTurizam.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AuthenticationController : ControllerBase
    {
        private readonly IAuthenticationService _auth;

        public AuthenticationController(IAuthenticationService auth)
        {
            _auth=auth;
        }


        [SwaggerOperation(Summary = "Registrovanje klijenta")]
        [HttpPost]
        [Route("register")]
        public async Task<IActionResult> RegisterKlijent([FromBody] RegisterModelKlijent model)
        {
            switch (await _auth.RegisterKlijent(model))
            {
                case ResponseStatus.Ok:
                    return Ok(new Response { Status = "Success", Message = "Klijent je uspešno registrovan!" });
                case ResponseStatus.UserExists:
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "Klijent već postoji!" });
                case ResponseStatus.Error:
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "Neuspešno kreiranje klijenta! " +
                        "Molimo Vas proverite kredencijale pa pokušajte ponovo." });
                default: return StatusCode(500);
            }
        }


        [SwaggerOperation(Summary = "Registrovanje admina")]
        [HttpPost]
        [Route("registerAdmin")]
        public async Task<IActionResult> RegisterAdmin([FromBody] RegisterModelAdmin model)
        {
            switch (await _auth.RegisterAdmin(model))
            {
                case ResponseStatus.Ok:
                    return Ok(new Response { Status = "Success", Message = "Admin je uspešno registrovan!" });
                case ResponseStatus.UserExists:
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "Admin već postoji!" });
                case ResponseStatus.Error:
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response
                    {
                        Status = "Error",
                        Message = "Neuspešno kreiranje admina! " +
                        "Molimo Vas proverite kredencijale pa pokušajte ponovo."
                    });
                default: return StatusCode(500);
            }
        }



        [SwaggerOperation(Summary = "Login korisnika (klijenta/admina)")]
        [HttpPost]
        [Route("login")]
        public async Task<IActionResult> Login([FromBody] LoginModel model)
        {
            var loginResult = await _auth.Login(model);

           return(loginResult!=null ? 
                Ok(new {token = loginResult })
                : Unauthorized());
        }


    }
}
