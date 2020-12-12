using System;
using System.Linq;
using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StockLabWeb.Models;
using Microsoft.AspNetCore.Authorization;
using System.Threading.Tasks;
using Microsoft.AspNetCore.SignalR;
using StockLabWeb.Hubs;

namespace StockLabWeb.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class AprobarSolicitudController : ControllerBase
    {
        private readonly SolicitudService _service;
        private readonly IHubContext<SignalHub> _hubContext;
        public AprobarSolicitudController(StockLabContext context, IHubContext<SignalHub> hubContext)
        {
            _service = new SolicitudService(context);
            _hubContext = hubContext;
        }

        //api/Solicitud/5
        [HttpPut("{numero}")]
        public async Task<ActionResult<string>> Put(string numero)
        {
            var response = _service.AprobarSolicitud(numero);

            if(response.Error)
            {
                ModelState.AddModelError("Error al modificar la solicitud", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                if(response.Estado == "No existe")
                {
                    detallesproblemas.Status = StatusCodes.Status404NotFound;
                }
                if(response.Estado == "Insuficiente")
                {
                    detallesproblemas.Status = StatusCodes.Status404NotFound;
                }
                if(response.Estado == "Error Aplicacion")
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }
                return BadRequest(detallesproblemas);
            }
            var solicitudview = new SolicitudViewModel (response.Solicitud);
            await _hubContext.Clients.All.SendAsync("solicitudRegistrada", solicitudview);
            return Ok (solicitudview);
        }
    }
}
