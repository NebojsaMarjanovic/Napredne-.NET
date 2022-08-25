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
    public class KorisnikRepository : IKorisnikRepository
    {
        private readonly Context _context;

        public KorisnikRepository(Context context)
        {
            _context = context;
        }
        public Task Add(Korisnik entity)
        {
            throw new NotImplementedException();
        }

        public Task Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<Korisnik>> GetAll()
        {
            throw new NotImplementedException();
        }

        public Task<List<Korisnik>> SearchBy(Expression<Func<Korisnik, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Korisnik> SearchById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<Korisnik> Update(Korisnik entity)
        {
            throw new NotImplementedException();
        }
    }
}
