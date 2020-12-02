using System.Linq;
using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StockLabWeb.Models;
using Microsoft.AspNetCore.Authorization;

namespace StockLabWeb.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class PeriodoAcademicoController : ControllerBase
    {
        private readonly PeriodoAcademicoService _service;

        public PeriodoAcademicoController(StockLabContext context)
        {
            _service = new PeriodoAcademicoService(context);
        }

        // POST: api/PeriodoAcademico
        [HttpPost]
        public ActionResult<PeriodoAcademicoViewModel> Post(PeriodoAcademicoInputModel periodoAcademicoInput)
        {
            PeriodoAcademico periodo = MapearPeriodo(periodoAcademicoInput);
            var response = _service.GuardarPeriodo(periodo);
            if(response.Error)
            {
                ModelState.AddModelError("Error al guardar Periodo", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            return Ok(response.PeriodoAcademico);
        }


        private PeriodoAcademico MapearPeriodo(PeriodoAcademicoInputModel periodoAcademicoInput)
        {
            var periodo = new PeriodoAcademico
            {
                Periodo = periodoAcademicoInput.Periodo,
                Corte = int.Parse(periodoAcademicoInput.Corte)
            };

            return periodo;
        }
    }
}