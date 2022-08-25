using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.BusinessLogic.Models
{
    public class GradModel
    {
        public int Id { get; set; }
        public string Naziv { get; set; }
        public int BrSlobodnihMesta { get; set; }
        public int CenaPoOsobi { get; set; }
        public DateTime DatumPolaska { get; set; }
        public DateTime DatumPovratka { get; set; }
    }
}
