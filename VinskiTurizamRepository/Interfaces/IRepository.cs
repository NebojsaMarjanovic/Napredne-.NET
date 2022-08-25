using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace VinskiTurizam.Repository.Interfaces
{
    public interface IRepository<TEntity> where TEntity:class,new()
    {
        public Task Add(TEntity entity);
        public Task Delete(int id);
        public Task<List<TEntity>> SearchBy(Expression<Func<TEntity, bool>> predicate);
        public Task<TEntity> SearchById(int id);
        public Task<TEntity> Update(TEntity entity);
        public Task<List<TEntity>> GetAll();
    }
}
