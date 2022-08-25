using Microsoft.AspNetCore.Identity;
using PdfSharp.Pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Exceptions;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;
using VinskiTurizam.Repository.UnitOfWork;

namespace VinskiTurizam.BusinessLogic.Services
{
    public class RezervacijaService : IRezervacijaService
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly UserManager<Korisnik> _userManager;
        private readonly IPdfService _pdfService;


        public RezervacijaService(IUnitOfWork unitOfWork, UserManager<Korisnik> userManager, IPdfService pdfService)
        {
            _pdfService = pdfService;
            _unitOfWork = unitOfWork;
            _userManager = userManager;
        }

        public async Task<string> KreirajRezervaciju(RezervacijaModel rezervacijaModel)
        {
            var grad = await _unitOfWork.GradRepository.SearchById(rezervacijaModel.GradId);
            var korisnik = await _userManager.FindByIdAsync(rezervacijaModel.KorisnikId);

            if (grad == null || korisnik == null)  throw new RezervacijaException("Grad ili korisnik moraju postojati!");

            if (rezervacijaModel.BrojOsoba > grad.BrojSlobodnihMesta) throw new RezervacijaException("Aranzman nema" +
                " dovoljno slobodnih mesta!");

            var rezervacija = new Rezervacija
            {
                GradId = rezervacijaModel.GradId,
                Grad = grad,
                KorisnikId = rezervacijaModel.KorisnikId,
                Korisnik = korisnik,
                RezervacijaId = Guid.NewGuid().ToString(),
                BrojOsoba=rezervacijaModel.BrojOsoba,
                DorucakUHotelu=rezervacijaModel.DorucakUHotelu,
                VeceraUVinariji=rezervacijaModel.VeceraUVinariji,
                Napomena = rezervacijaModel.Napomena,
                Cena = rezervacijaModel.UkupnaCena
            };
            await _unitOfWork.RezervacijeRepository.Add(rezervacija);
            grad.BrojSlobodnihMesta = grad.BrojSlobodnihMesta - rezervacija.BrojOsoba;
            await _unitOfWork.GradRepository.Update(grad);
            await _unitOfWork.Save();
            return await _pdfService.KreirajPdf(rezervacija);
        }

        public async Task<List<Rezervacija>> PrikaziSveRezervacije()
        {
            return await _unitOfWork.RezervacijeRepository.GetAll();
        }
    }
}
