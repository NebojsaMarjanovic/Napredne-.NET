using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.Domain.DbSets
{
    public class Grad
    {
        public int GradId { get; set; }
        public string NazivGrada { get; set; }
        public string Opis { get; set; }
        public string Slika { get; set; }
        public int BrojSlobodnihMesta { get; set; }
        public string ProgramPutovanja { get; set; }
        public double CenaPoOsobi { get; set; }
        public DateTime DatumPolaska { get; set; }
        public DateTime DatumPovratka { get; set; }
        public Vinarija Vinarija { get; set; }
        public Hotel Hotel { get; set; }
        public List<Rezervacija> Rezervacije { get; set; }

    }
}
