using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.Domain.DbSets
{
    public class Vinarija
    {
        public int VinarijaId { get; set; }
        public string Naziv { get; set; }
        public string Opis { get; set; }
        public List<Vino> Vina { get; set; }

        public Grad Grad { get; set; }
        public int GradId { get; set; }
    }
}
