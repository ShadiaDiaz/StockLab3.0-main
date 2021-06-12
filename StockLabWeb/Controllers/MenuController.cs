using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace StockLabWeb.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class MenuController : ControllerBase
    {
        private readonly MenuService _service;
        public MenuController(StockLabContext context)
        {
            _service = new MenuService(context);
        }


        [HttpGet("{id}")]
        public ActionResult<ModuloMenu> ConsultarMenu(int id)
        {
            var result = _service.ConsultarMenu(id);
            
            if(result.Error)
            {
                ModelState.AddModelError("Error al consultar menu", result.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                if(result.Estado == "Error")
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }
                return BadRequest(detallesproblemas);
            }
            return Ok(result.Lista);
        }
    }
}