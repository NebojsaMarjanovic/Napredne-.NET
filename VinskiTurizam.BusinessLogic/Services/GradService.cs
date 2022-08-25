using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic.Enumerations;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;
using VinskiTurizam.Repository.UnitOfWork;

namespace VinskiTurizam.BusinessLogic.Services
{
    public class GradService : IGradService
    {
        private readonly IUnitOfWork _unitOfWork;

        public GradService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }
        public  async Task<List<Grad>> PrikaziSveGradove()
        {
            var result = await _unitOfWork.GradRepository?.GetAll();
            return result;
        }

        public async Task<ResponseStatus> ObrisiGrad(int id)
        {
            try
            {
                await _unitOfWork.GradRepository.Delete(id);
                await _unitOfWork.Save();
                return ResponseStatus.Ok;
            }
            catch (Exception)
            {

                return ResponseStatus.Error;
            }         

        }

        public async Task<Grad> AzurirajGrad(GradModel gradModel)
        {
            Grad grad = new Grad
            {
                GradId = gradModel.Id,
                NazivGrada = gradModel.Naziv,
                BrojSlobodnihMesta = gradModel.BrSlobodnihMesta,
                CenaPoOsobi = gradModel.CenaPoOsobi,
                DatumPolaska = gradModel.DatumPolaska,
                DatumPovratka = gradModel.DatumPovratka
            };
            var result =  await _unitOfWork.GradRepository.Update(grad);
            await _unitOfWork.Save();
            return result;
        }

      

    }
}
