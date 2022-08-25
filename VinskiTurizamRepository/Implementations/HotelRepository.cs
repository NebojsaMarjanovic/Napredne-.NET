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
    public class HotelRepository : IHotelRepository
    {
        private readonly Context _context;

        public HotelRepository(Context context)
        {
            _context = context;
        }

        public Task Add(Hotel entity)
        {
            throw new NotImplementedException();
        }

        public Task Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Task<List<Hotel>> GetAll()
        {
            throw new NotImplementedException();
        }

        public Task<List<Hotel>> SearchBy(Expression<Func<Hotel, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Hotel> SearchById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<Hotel> Update(Hotel entity)
        {
            throw new NotImplementedException();
        }
    }
}
