using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.Domain;
using VinskiTurizam.Domain.DbSets;
using VinskiTurizam.Repository.Interfaces;

namespace VinskiTurizam.Repository.Implementations
{
    public class VinarijaRepository : IVinarijaRepository
    {
        private readonly Context _context;

        public VinarijaRepository(Context context)
        {
            _context = context;
        }

        public Task Add(Vinarija entity)
        {
            throw new NotImplementedException();
        }

        public Task Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<Vinarija>> GetAll()
        {
            throw new NotImplementedException();
        }

        public async Task<Vinarija> SearchByGradId(int idGrada)
        {
            throw new NotImplementedException();

        }

        public Task<List<Vinarija>> SearchBy(Expression<Func<Vinarija, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public async Task<Vinarija> SearchById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<Vinarija> Update(Vinarija entity)
        {
            throw new NotImplementedException();
        }


    }
}
