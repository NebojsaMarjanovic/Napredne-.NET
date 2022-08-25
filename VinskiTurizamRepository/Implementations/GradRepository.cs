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
    public class GradRepository : IGradRepository
    {
        private readonly Context _context;

        public GradRepository(Context context)
        {
            _context = context;
        }

        public Task Add(Grad entity)
        {
            throw new NotImplementedException();
        }

        public async Task Delete(int id)
        {

            try
            {
                Grad grad = await this.SearchById(id);
                await Task.FromResult(_context.Gradovi.Remove(grad));
            }
            catch (Exception)
            {

                throw;
            }
        }

        public async Task<List<Grad>> GetAll()
        {
            return await _context.Gradovi?.Include(g=>g.Vinarija).Include(g=>g.Hotel).Include(g=>g.Vinarija.Vina).ToListAsync();
        }

        public Task<List<Grad>> SearchBy(Expression<Func<Grad, bool>> predicate)
        {
            throw new NotImplementedException();
        }

        public async Task<Grad> SearchById(int id)
        {
            var grad = await _context.Gradovi.Include(g=>g.Vinarija).Include(g=>g.Hotel).FirstOrDefaultAsync(g => g.GradId == id);
            if (grad != null) return grad;
            return null;
        }

        public async Task<Grad> Update(Grad entity)
        {
            var grad =await  this.SearchById(entity.GradId);
            if (grad == null)
            {
                return null;
            }
            
            grad.BrojSlobodnihMesta = entity.BrojSlobodnihMesta;
            grad.CenaPoOsobi = entity.CenaPoOsobi;
            grad.DatumPolaska = entity.DatumPolaska;
            grad.DatumPovratka = entity.DatumPovratka;

            _context.Attach(grad);
            _context.Entry(grad).Property(g => g.BrojSlobodnihMesta).IsModified = true;
            _context.Entry(grad).Property(g => g.CenaPoOsobi).IsModified = true;
            _context.Entry(grad).Property(g => g.DatumPolaska).IsModified = true;
            _context.Entry(grad).Property(g => g.DatumPovratka).IsModified = true;


            return grad;
        }
    }
}
