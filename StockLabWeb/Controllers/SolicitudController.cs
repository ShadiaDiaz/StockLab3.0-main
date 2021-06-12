using System;
using System.Linq;
using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StockLabWeb.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.SignalR;
using StockLabWeb.Hubs;
using System.Threading.Tasks;

namespace StockLabWeb.Controllers
{
    
    [Route("api/[controller]")]
    [Authorize]
    [ApiController]
    public class SolicitudController : ControllerBase
    {

        private readonly SolicitudService _service;
        private readonly IHubContext<SignalHub> _hubContext;
        public SolicitudController(StockLabContext context, IHubContext<SignalHub> hubContext)
        {
            _service = new SolicitudService(context);
            _hubContext = hubContext;
        }
        // POST: api/Solicitud
        [HttpPost]
        public async Task<ActionResult<SolicitudViewModel>> Post(SolicitudInputModel solicitudInputModel)
        {
            Solicitud solicitud = MapearSolicitud(solicitudInputModel);
            var response = _service.GuardarSolicitud(solicitud);
            if (response.Error)
            {
                ModelState.AddModelError("Error al guardar la solicitud", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                if(response.Mensaje == "Cantidad Insuficiente")
                {
                    detallesproblemas.Status = StatusCodes.Status400BadRequest;
                }
                else
                {
                    detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                }

                return BadRequest(detallesproblemas);
            }
            var solicitudview = new SolicitudViewModel (response.Solicitud);
            await _hubContext.Clients.All.SendAsync("solicitudRegistrada", solicitudview);
            return Ok (solicitudview);
        }

        //api/Solicitud
        [HttpGet]
        public ActionResult<SolicitudViewModel> Gets()
        {
            var response = _service.ConsultarSolicitudes();

            if (response.Error)
            {
                ModelState.AddModelError("Error al Consutar las solicitudes", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);

                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            return Ok(response.Solicitudes.Select(a => new SolicitudViewModel(a)));
        }

        // GET: api/Solicitud/5​
        [HttpGet("{numero}")]
        public ActionResult<SolicitudViewModel> Get(string numero)
        {
            var response = _service.BuscarSolicitud(numero);

            if (response.Error)
            {
                ModelState.AddModelError("Error al Consutar las solicitudes", response.Mensaje);
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
            return Ok(new SolicitudViewModel(response.Solicitud));
        }

        //api/Solicitud/5
        [HttpPut("{numero}")]
        public async Task<ActionResult<string>> Put(string numero)
        {
            string[] solicitu = numero.Split(';');
            var response = _service.ActualizarEstado(solicitu[0], solicitu[1]);
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
            var solicitudview = new SolicitudViewModel (response.Solicitud);
            await _hubContext.Clients.All.SendAsync("solicitudRegistrada", solicitudview);
            return Ok (solicitudview);
        }






        private Solicitud MapearSolicitud(SolicitudInputModel solicitudInput)
        {
            var solicitud = new Solicitud
            {
                Fecha = DateTime.Parse(solicitudInput.Fecha),
                Estado = solicitudInput.Estado,
                CodigoAsignatura = solicitudInput.Asignatura.Codigo,
                IdPersona = solicitudInput.IdPersona,
                Detalles = solicitudInput.Detalles,
                SolicitudFecha = DateTime.Now,
                Monitor = solicitudInput.Monitor
            };
            return solicitud;
        }
    }
}