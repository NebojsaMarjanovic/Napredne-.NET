using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.Repository.Interfaces;

namespace VinskiTurizam.Repository.UnitOfWork
{
    public interface IUnitOfWork
    {
        public IAdminRepository AdminRepository { get; set; }
        public IGradRepository GradRepository { get; set; }
        public IHotelRepository HotelRepository { get; set; }
        public IKlijentRepository KlijentRepository { get; set; }
        public IKorisnikRepository KorisnikRepository { get; set; }
        public IRezervacijaRepository RezervacijeRepository { get; set; }
        public IVinarijaRepository VinarijaRepository { get; set; }

        public Task Save();
    }
}
