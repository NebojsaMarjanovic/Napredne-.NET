using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.BusinessLogic.Models
{
    public class RezervacijaModel
    {
        public int GradId { get; set; }
        public string KorisnikId { get; set; }
        public int BrojOsoba { get; set; }
        public bool DorucakUHotelu { get; set; }
        public bool VeceraUVinariji { get; set; }
        public string Napomena { get; set; }
        public int UkupnaCena { get; set; }


    }
}
