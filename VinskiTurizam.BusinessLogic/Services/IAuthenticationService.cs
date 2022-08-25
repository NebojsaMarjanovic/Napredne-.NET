using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Enumerations;
using VinskiTurizam.BusinessLogic.Models;

namespace VinskiTurizam.BusinessLogic
{
    public interface IAuthenticationService
    {

        Task<ResponseStatus> RegisterKlijent(RegisterModelKlijent model);
        Task<ResponseStatus> RegisterAdmin(RegisterModelAdmin model);
        Task<string> Login(LoginModel model);



    }
}
