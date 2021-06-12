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
    public class PersonaController : ControllerBase
    {
        private readonly PersonaService _service;
        public PersonaController(StockLabContext context)
        {
            _service = new PersonaService(context);
        }
        // POST: api/Persona
        [HttpPost]
        public ActionResult<PersonaViewModel> Post(PersonaInputModel personaInput)
        {
            personaInput.Usuario.User= personaInput.Correo;
            Persona persona = MapearPersona(personaInput);
            var response = _service.GuardarPersona(persona);
            if (response.Error)
            {
                ModelState.AddModelError("Error al guardar persona", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                if (response.Mensaje == "Duplicado")
                {
                    detallesproblemas.Status = StatusCodes.Status400BadRequest;
                }
                else
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Persona);
        }

        //api/Persona
        [HttpGet]
        public ActionResult<PersonaViewModel> Gets()
        {
            var response = _service.ConsultarMonitores();

            if (response.Error)
            {
                ModelState.AddModelError("Error al Consutar los monitores", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Personas.Select(a => new PersonaViewModel(a)));
        }

        
        
        // GET: api/Persona/5​
        [HttpGet("{identificacion}")]
        public ActionResult<PersonaViewModel> Get(string identificacion)
        {
            var response = _service.BuscarPersona(identificacion);
            if(response.Error)
            {
                ModelState.AddModelError("Error al consultar insumo", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                if(response.Mensaje == "No existe")
                {
                    detallesproblemas.Status = StatusCodes.Status404NotFound;
                }
                else
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }
                return BadRequest(detallesproblemas);
            }
            return Ok(new PersonaViewModel(response.Persona));
        }

        private Persona MapearPersona(PersonaInputModel personaInput)
        {
            var persona = new Persona
            {
                Identificacion = personaInput.Identificacion,
                Nombre = personaInput.Nombre,
                Apellidos = personaInput.Apellidos,
                Correo = personaInput.Correo,
                Edad = personaInput.Edad,
                Sexo = personaInput.Sexo,
                Usuario = personaInput.Usuario,

            };
            return persona;
        }
    }
}