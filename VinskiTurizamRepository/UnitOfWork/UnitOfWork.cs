using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.Domain;
using VinskiTurizam.Repository.Implementations;
using VinskiTurizam.Repository.Interfaces;

namespace VinskiTurizam.Repository.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly Context context;

        public UnitOfWork(Context context)
        {
            this.context = context;
            AdminRepository = new AdminRepository(context);
            GradRepository = new GradRepository(context);
            HotelRepository = new HotelRepository(context);
            KlijentRepository = new KlijentRepository(context);
            KorisnikRepository = new KorisnikRepository(context);
            RezervacijeRepository = new RezervacijaRepository(context);
            VinarijaRepository = new VinarijaRepository(context);
        }

        public IAdminRepository AdminRepository { get ; set; }
        public IGradRepository GradRepository { get; set; }
        public IHotelRepository HotelRepository { get; set; }
        public IKlijentRepository KlijentRepository { get; set; }
        public IKorisnikRepository KorisnikRepository { get; set; }
        public IRezervacijaRepository RezervacijeRepository { get; set; }
        public IVinarijaRepository VinarijaRepository { get; set; }

        public async Task Save()
        {
            await context.SaveChangesAsync();
        }
    }
}
