using System;
using Entity;
using Datos;
using System.Linq;

namespace Logica
{
    public class LoginService
    {
        private readonly StockLabContext _context;
        public LoginService(StockLabContext context)
        {
            _context = context;
        }

        public Usuario ValidarUsuario(string nombreUsuario, string contrasena)
        {
            try
            {
                return _context.Usuarios.Where(u => u.User.ToLower() == nombreUsuario.ToLower() && u.Password == contrasena && (u.Estado == "Activo" || u.Estado == "Modificado")).FirstOrDefault();
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
