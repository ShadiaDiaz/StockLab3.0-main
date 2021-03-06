using Entity;

namespace StockLabWeb.Models
{
    public class ChatModelInput
    {
        public string Codigo { get; set; }
        public string Mensaje { get; set; }
        public string IdPersona { get; set; }
        public string Admin { get; set; }
    }

    public class ChatViewModel : ChatModelInput
    {
        public ChatViewModel()
        {

        }

        public ChatViewModel(Chat chat)
        {
            Codigo = chat.Codigo;
            Mensaje = chat.Mensaje;
            IdPersona = chat.IdPersona;
            Admin = chat.Admi;
            Persona = chat.Persona;
        }

        public Persona Persona { get; set; }
    }
}