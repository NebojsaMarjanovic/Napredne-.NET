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
    public class AdminRepository : IAdminRepository
    {
        private readonly Context _context;

        public AdminRepository(Context context)
        {
            _context = context;
        }
        public async Task Add(Admin entity)
        {
            await _context.Admini.AddAsync(entity);
        }

        public Task Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<Admin>> GetAll()
        {
            throw new NotImplementedException();
        }

        public Task<List<Admin>> SearchBy(Expression<Func<Admin, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Admin> SearchById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<Admin> Update(Admin entity)
        {
            throw new NotImplementedException();
        }
    }
}
