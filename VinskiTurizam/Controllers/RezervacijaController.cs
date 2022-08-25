using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PdfSharp.Pdf;
using Swashbuckle.AspNetCore.Annotations;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic;
using VinskiTurizam.BusinessLogic.Exceptions;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.Domain.DbSets;

namespace VinskiTurizam.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RezervacijaController : ControllerBase
    {
        private readonly IRezervacijaService _rezervacijaService;

        public RezervacijaController(IRezervacijaService rezervacijaService)
        {
            _rezervacijaService = rezervacijaService;
        }

        [SwaggerOperation(Summary = "Dodavanje rezervacija")]
        [HttpPost]
        public async Task<IActionResult> AddRezervacija([FromBody] RezervacijaModel rezervacija)
        {
            var pdfPotvrda = "";
            var mimeType = "application/pdf";
            try
            {
                pdfPotvrda = await _rezervacijaService.KreirajRezervaciju(rezervacija);
            }
            catch (RezervacijaException e)
            {
                return BadRequest(e.Message);
            }
            if (pdfPotvrda!="")
            {
                return Ok(pdfPotvrda);
            }
            return BadRequest();
        }

        [SwaggerOperation(Summary = "Prikaz svih rezervacija")]
        [HttpGet]
        public async Task<IActionResult> GetRezervacije()
        {
            var result = await _rezervacijaService.PrikaziSveRezervacije();
            if (result == null)
            {
                return NotFound();
            }
            return Ok(result);
        }
    }
}
