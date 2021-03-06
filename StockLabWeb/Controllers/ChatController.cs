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
using Microsoft.AspNetCore.SignalR;
using StockLabWeb.Hubs;
using System.Threading.Tasks;

namespace StockLabWeb.Controllers
{
    //[Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ChatController : ControllerBase
    {
        private readonly ChatService _service;
        private readonly IHubContext<SignalHub> _hubContext;
        public ChatController(StockLabContext context, IHubContext<SignalHub> hubContext)
        {
            _service = new ChatService(context);
            _hubContext = hubContext;
        }

        [HttpPost]
        public async Task<ActionResult<ChatViewModel>> Post(ChatModelInput input)
        {
            Chat chat = Mappear(input);
            var response = _service.GuardarMensaje(chat);
            if(response.Error)
            {
                ModelState.AddModelError("Error al guardar El chat", response.Mensaje);
                var detallesproblemas = new ValidationProblemDetails(ModelState);
                detallesproblemas.Status = StatusCodes.Status500InternalServerError;
                return BadRequest(detallesproblemas);
            }
            var chatview = new ChatViewModel (response.Chat);
            await _hubContext.Clients.All.SendAsync("chatRegistrada", chatview);
            return Ok (chatview);
        }

        [HttpGet]
        public ActionResult<ChatViewModel> Get()
        {
            var response = _service.ConsultarChats();
            if(response.Error)
            {
                return BadRequest(response.Mensaje);
            }
            return Ok(response.Chats.Select(c => new ChatViewModel(c)));
        }
        private Chat Mappear(ChatModelInput input)
        {
            var chat = new Chat
            {
                Mensaje = input.Mensaje,
                IdPersona = input.IdPersona,
                Admi = input.Admin
            };
            return chat;
        }
    }
}