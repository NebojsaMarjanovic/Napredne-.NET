using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.Domain.DbSets
{
    public class Admin:Korisnik
    {
        public DateTime DatumZaposlenja { get; set; }
    }
}
