using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StockLabWeb.Models;
using Microsoft.AspNetCore.Authorization;
using System.Linq;

namespace StockLabWeb.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ReportesController : ControllerBase
    {
        private readonly ReporteService _reporteService;

        public ReportesController(StockLabContext context)
        {
            _reporteService = new ReporteService(context);
        }

        [HttpGet("ReporteInsumos")]
        public ActionResult<InsumoViewModel> ConsultarReporteInsumos()
        {
            var response = _reporteService.ConsultarInsumoSolicitados();
            if (response.Error)
            {
                ModelState.AddModelError("Error al consultar los insumos", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }

            return Ok(response.Lista.Select(r => new InsumoViewModel(r)));
        }
        
        [HttpGet("ReporteUsuarioInsumos")]
        public ActionResult<InsumoViewModel> ConsultarReporteUsuarioInsumos()
        {
            var response = _reporteService.ConsultarInsumosPorPersona();
            if (response.Error)
            {
                ModelState.AddModelError("Error al consultar los insumos", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }

            return Ok(response.Lista.Select(r => new PersonaViewModel(r)));
        }
        
        [HttpGet("ReporteUsuarioSolicitud")]
        public ActionResult<InsumoViewModel> ConsultarReporteUsuarioSolicitud()
        {
            var response = _reporteService.ConsultarSolicitudesPorPersona();
            if (response.Error)
            {
                ModelState.AddModelError("Error al consultar los insumos", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }

            return Ok(response.Lista.Select(r => new PersonaViewModel(r)));
        }
        
        [HttpGet("ReporteAsignaturas")]
        public ActionResult<AsignaturaViewModel> ConsultarAsignaturasSolicitadas()
        {
            var response = _reporteService.ConsultarAsignaturasMasSolicitadas();
            if (response.Error)
            {
                ModelState.AddModelError("Error al consultar los insumos", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }

            return Ok(response.Lista.Select(r => new AsignaturaViewModel(r)));
        }
        
        [HttpGet("ReporteInsumosMinimos")]
        public ActionResult<InsumoViewModel> ConsultarReporteStockMinimoInsumos()
        {
            var response = _reporteService.ReporteStockMinimoInsumos();
            if (response.Error)
            {
                ModelState.AddModelError("Error al consultar los insumos", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }

            return Ok(response.Lista.Select(r => new InsumoViewModel(r)));
        }
        
    }
}