using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.Domain.DbSets
{
    public class Vino
    {
        public int VinoId { get; set; }
        public string Naziv { get; set; }
        public List<Vinarija> Vinarije { get; set; }
    }
}
