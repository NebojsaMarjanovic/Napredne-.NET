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
    public class RezervacijaRepository : IRezervacijaRepository
    {
        private readonly Context _context;

        public RezervacijaRepository(Context context)
        {
            _context = context;
        }

        public async Task Add(Rezervacija entity)
        {
            await _context.Rezervacije.AddAsync(entity);
        }

        public Task Delete(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<List<Rezervacija>> GetAll()
        {
            return await _context.Rezervacije?.Include(r=>r.Grad).Include(r=>r.Korisnik)
                .Include(r=>r.Grad.Vinarija).Include(r=>r.Grad.Hotel).ToListAsync();
        }

        public Task<List<Rezervacija>> SearchBy(Expression<Func<Rezervacija, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public Task<Rezervacija> SearchById(int id)
        {
            throw new NotImplementedException();
        }

        public Task<Rezervacija> Update(Rezervacija entity)
        {
            throw new NotImplementedException();
        }
    }
}
