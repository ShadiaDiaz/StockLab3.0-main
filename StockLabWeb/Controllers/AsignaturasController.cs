using Microsoft.AspNetCore.Mvc;
using Logica;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Linq;
using Entity;
using Datos;
using StockLabWeb.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authorization;

namespace StockLabWeb.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class AsignaturasController : ControllerBase
    {
        private readonly AsignaturaService _service;
        public AsignaturasController(StockLabContext context)
        {
            _service = new AsignaturaService(context);
        }
        // POST: api/Asignatura​s
        [HttpPost]
        public ActionResult<AsignaturaViewModel> Post(AsignaturaInputModel asignaturaInput)
        {
            Asignaturas asignatura = MapearAsignatura(asignaturaInput);
            var response = _service.GuardarAsignatura(asignatura);
            if(response.Error)
            {
                ModelState.AddModelError("Error al guardar asignatura", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
            if (response.Estado == "Duplicado")
            {
                detallesproblemas.Status = StatusCodes.Status400BadRequest;
            }
            if(response.Estado == "Error")
            {
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
            }
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Asignatura);
        }

        //api/Asignaturas
        [HttpGet]
        public ActionResult<AsignaturaViewModel> Get()
        {
            var response = _service.ConsultarAsignaturas();

            if(response.Error)
            {
                return BadRequest(response.Mensaje);
            }
            return Ok(response.Asignaturas.Select(a => new AsignaturaViewModel(a)));
        }



        private Asignaturas MapearAsignatura(AsignaturaInputModel asignaturaInput)
        {
            var asignatura = new Asignaturas
            {
                Codigo = asignaturaInput.Codigo,
                Nombre = asignaturaInput.Nombre,
                Horario = asignaturaInput.Horario
            };
            return asignatura;
        }
    }
}