using PdfSharp.Pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.BusinessLogic.Services
{
    public interface IPdfService
    {
        Task<string> KreirajPdf(Rezervacija rezervacija);
    }
}
