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


        // GET: api/Insumo/5​
        [HttpGet("{numero}")]
        public ActionResult<InsumoViewModel> Get(string numero)
        {
            var response = _service.BuscarInsumo(numero);

            if (response.Error)
            {
                ModelState.AddModelError("Error al Consutar las solicitudes", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                if(response.Estado == "No existe")
                {
                    detallesproblemas.Status = StatusCodes.Status404NotFound;
                }
                if(response.Estado == "Error")
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }
                return BadRequest(detallesproblemas);
            }
            return Ok(new InsumoViewModel(response.Insumo));
        }

        //api/Insumo/5
        [HttpPut("{numero}")]
        public ActionResult<string> Put(string numero)
        {
            string[] solicitu = numero.Split(';');
            var response = _service.ActualizarCantidadInsumo(solicitu[0], int.Parse(solicitu[1]));

            if(response.Error)
            {
                ModelState.AddModelError("Error al modificar la solicitud", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                if(response.Estado == "No existe")
                {
                    detallesproblemas.Status = StatusCodes.Status404NotFound;
                }
                if(response.Estado == "Error Aplicacion")
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Insumo);
        }



        private Insumo MapearInsumo(InsumoInputModel insumoInput)
        {
            var insumo = new Insumo
            {
                Item = insumoInput.Item,
                Descripcion = insumoInput.Descripcion,
                Marca = insumoInput.Marca,
                Cantidad = insumoInput.Cantidad,
                StockMinimo = insumoInput.StockMinimo
            };
            return insumo;
        }
    }
}