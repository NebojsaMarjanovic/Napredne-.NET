using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.Domain.DbSets
{
    public class Rezervacija
    {
        public int GradId { get; set; }
        public Grad Grad { get; set; }
        public string KorisnikId { get; set; }
        public Korisnik Korisnik { get; set; }
        public string RezervacijaId { get; set; }
        public int BrojOsoba { get; set; }
        public bool DorucakUHotelu { get; set; }
        public bool VeceraUVinariji { get; set; }
        public string Napomena { get; set; }
        public double Cena { get; set; }
    }
}
