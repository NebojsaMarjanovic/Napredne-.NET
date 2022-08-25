using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.BusinessLogic.Models
{
    public class RegisterModelAdmin
    {
        [Required(ErrorMessage = "Ime is required")]
        public string Ime { get; set; }

        [Required(ErrorMessage = "Prezime is required")]
        public string Prezime { get; set; }

        [Required(ErrorMessage = "Username is required")]
        public string Username { get; set; }

        [EmailAddress]
        public string Email { get; set; }

        [Required(ErrorMessage = "Password is required")]
        public string Password { get; set; }

        [Phone]
        [Required(ErrorMessage = "Telefon is required")]
        public string BrTelefona { get; set; }

        [Required(ErrorMessage = "Datum zaposlenja is required")]
        public DateTime DatumZaposlenja { get; set; }
    }
}
