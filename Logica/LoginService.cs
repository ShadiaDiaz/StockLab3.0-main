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
                var user = _context.Usuarios.Where(u => u.User.ToLower() == nombreUsuario.ToLower() && u.Password == contrasena && (u.Estado == "Activo" || u.Estado == "Modificado")).FirstOrDefault();
                user.Role = _context.Roles.Find(user.IdRole);
                return user;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
