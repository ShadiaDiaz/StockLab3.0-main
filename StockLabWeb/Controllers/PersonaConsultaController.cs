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
    public class PersonaConsultaController : ControllerBase
    {
        private readonly PersonaService _service;

        public PersonaConsultaController(StockLabContext context)
        {
            _service = new PersonaService(context);
        }


        //api/PersonaConsulta
        [HttpGet]
        public ActionResult<PersonaViewModel> Gets()
        {
            var response = _service.ConsultarPersonas();

            if (response.Error)
            {
                ModelState.AddModelError("Error al Consutar las personas", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Personas.Select(a => new PersonaViewModel(a)));
        }
    }
}