using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System.Collections.Generic;
using System.Threading.Tasks;
using VinskiTurizam.BusinessLogic;
using VinskiTurizam.BusinessLogic.Enumerations;
using VinskiTurizam.BusinessLogic.Models;
using VinskiTurizam.BusinessLogic.Services;
using VinskiTurizam.Domain.DbSets;
using VinskiTurizam.Models;

namespace VinskiTurizam.Controllers
{
    [Route("[controller]/[action]")]
    [ApiController]
    public class GradController : ControllerBase
    {
        private readonly IGradService _gradService;

        public GradController(IGradService gradService)
        {
            _gradService = gradService;
        }

        //[Authorize(Roles ="Admin")]
        [SwaggerOperation(Summary = "Prikaz svih gradova")]
        [HttpGet]
        public async Task<IActionResult> GetGradovi()
        {
            var result = await _gradService.PrikaziSveGradove();
            if (result == null)
            {
                return NotFound();
            }
            return Ok(result) ;
        }

        [SwaggerOperation(Summary = "Azuriranje grada")]
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateGrad([FromBody] GradModel grad)
        {
            var result = await _gradService.AzurirajGrad(grad);
            if (result == null)
            {
                return NotFound();
            }
            return Ok();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteGrad(int id)
        {
            switch(await _gradService.ObrisiGrad(id))
            {
                case ResponseStatus.Ok:
                    return Ok();
                case ResponseStatus.Error:
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "Nije moguće obrisati aranžman" });
                default:
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "Serverska greška" });
            }
        }

    }
}
