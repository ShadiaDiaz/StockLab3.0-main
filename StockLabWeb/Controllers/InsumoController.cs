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
    
    [Route("api/[controller]")]
    [ApiController]
    public class InsumoController : ControllerBase
    {
        private readonly InsumoService _service;
        public InsumoController(StockLabContext context)
        {
            _service = new InsumoService(context);
        }
        // POST: api/Insumo
        [HttpPost]
        public ActionResult<InsumoViewModel> Post(InsumoInputModel insumoInput)
        {
            Insumo insumo = MapearInsumo(insumoInput);
            var response = _service.GuardarInsumo(insumo);
            if(response.Error)
            {
                ModelState.AddModelError("Error al guardar insumo", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Insumo);
        }

        //api/Insumo
        [HttpGet]
        public ActionResult<AsignaturaViewModel> Get()
        {
            var response = _service.ConsultarInsumos();

            if(response.Error)
            {
                ModelState.AddModelError("Error al consultar insumo", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Insumos.Select(a => new InsumoViewModel(a)));
        }



        private Insumo MapearInsumo(InsumoInputModel insumoInput)
        {
            var insumo = new Insumo
            {
                Item = insumoInput.Item,
                Descripcion = insumoInput.Descripcion,
                Marca = insumoInput.Marca,
                Cantidad = insumoInput.Cantidad
            };
            return insumo;
        }
    }
}