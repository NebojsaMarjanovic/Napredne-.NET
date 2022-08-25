using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Enumerations;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.BusinessLogic
{
    public interface IGradService
    {
        Task<List<Grad>> PrikaziSveGradove();
        Task<ResponseStatus> ObrisiGrad(int id);
        Task<Grad> AzurirajGrad(GradModel grad);

    }
}
