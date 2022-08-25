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
    public class KlijentRepository : IKlijentRepository
    {
        private readonly Context _context;

        public KlijentRepository(Context context)
        {
            _context = context;
        }

        public async Task Add(Klijent entity)
        {
            await _context.Klijenti.AddAsync(entity);
        }

        public Task Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<Klijent>> GetAll()
        {
            throw new NotImplementedException();
        }

        public Task<List<Klijent>> SearchBy(Expression<Func<Klijent, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Klijent> SearchById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<Klijent> Update(Klijent entity)
        {
            throw new NotImplementedException();
        }
    }
}
