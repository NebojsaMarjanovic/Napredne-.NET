using PdfSharp.Pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.BusinessLogic
{
    public interface IRezervacijaService
    {
        Task<string> KreirajRezervaciju(RezervacijaModel rezervacijaModel);
        Task<List<Rezervacija>> PrikaziSveRezervacije();
    }
}
