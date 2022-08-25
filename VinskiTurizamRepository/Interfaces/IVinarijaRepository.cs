using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.Repository.Interfaces
{
    public interface IVinarijaRepository:IRepository<Vinarija>
    {
        public Task<Vinarija> SearchByGradId(int idGrada);
    }
}
