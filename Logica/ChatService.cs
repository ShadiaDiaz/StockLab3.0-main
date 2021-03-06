using System;
using System.Collections.Generic;
using Entity;
using Datos;
using System.Linq;
namespace Logica
{
    public class ChatService
    {
        private readonly StockLabContext _context;

        public ChatService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarMensajeResponse GuardarMensaje(Chat chat)
        {
            try
            {
                int codigo = _context.Chats.ToList().Count + 1;
                chat.Codigo = codigo+"";
                _context.Chats.Add(chat);
                _context.SaveChanges();
                return new GuardarMensajeResponse(chat);
            }
            catch(Exception e)
            {
                return new GuardarMensajeResponse($"Error en la aplicacion: {e.Message} " );
            }
        }

        public ConsultarMensajesResponse ConsultarChats()
        {
            try
            {
                var chats = _context.Chats.ToList();
                foreach (var item in chats)
                {
                    item.Persona = _context.Personas.Find(item.IdPersona);
                }
                return new ConsultarMensajesResponse(chats);
            }
            catch(Exception e)
            {
                return new ConsultarMensajesResponse($"Error en la aplicacion: {e.Message}");
            }
        }


        public class ConsultarMensajesResponse
        {
            public ConsultarMensajesResponse(List<Chat> chats)
            {
                Error = false;
                Chats = chats;
            }

            public ConsultarMensajesResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public List<Chat> Chats { get; set; }
        }


        public class GuardarMensajeResponse
        {
            public GuardarMensajeResponse(Chat chat)
            {
                Error = false;
                Chat = chat;
            }

            public GuardarMensajeResponse(string mensaje)
            {
                Mensaje = mensaje;
                Error = true;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Chat Chat { get; set; }
        }
    }
}