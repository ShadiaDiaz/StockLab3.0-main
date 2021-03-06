using Entity;

namespace StockLabWeb.Models
{
    public class UsuarioInputModel
    {
        public string Usuario { get; set; }
        public string Password { get; set; }
        public string Tipo { get; set; }
        public string  Token { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Estado { get; set; }
        public string IdPersona { get; set; }
        
        
    }

    public class UsuarioViewModel : UsuarioInputModel
    {
        public UsuarioViewModel()
        {

        }

        public UsuarioViewModel(Usuario usuario)
        {
            Usuario = usuario.User;
            Tipo = usuario.Tipo;
            Token = usuario.Token;
            Estado = usuario.Estado;
            Nombre = usuario.Nombre;
            Apellidos = usuario.Apellidos;
            IdPersona = usuario.IdPersona;
        }
    }
}