using Datos;
using Entity;
using Logica;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using StockLabWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using StockLabWeb.Config;
using StockLabWeb.Servicios;

namespace StockLabWeb.Controllers
{

    [ApiController]
    [Route("api/[controller]")]
    public class LoginController : ControllerBase
    {
        private ServiciosJwt _servicioJwt;
        private LoginService _servicioUsuario;

        private readonly StockLabContext _context;
        public LoginController(StockLabContext context, IOptions<AppSetting> appSettings)
        {
            _context = context;
            var admin = _context.Usuarios.Find("admin");
            if (admin == null)
            {
                _context.Usuarios.Add(new Entity.Usuario() { User = "admin", Tipo = "Administrador", Password = "admin", Estado = "Activo"});
                var i = _context.SaveChanges();
            }
            _servicioJwt = new ServiciosJwt(appSettings);
            _servicioUsuario = new LoginService(context);
        }
        
        [AllowAnonymous]
        [HttpPost()]
        public ActionResult Login(UsuarioInputModel model)
        {
            var user = _servicioUsuario.ValidarUsuario(model.Usuario, model.Password);
            if (user == null)
            {
                ModelState.AddModelError("Acceso Denegado", "Usuario y/o contraseña incorrectos");
                var problemDetails = new ValidationProblemDetails(ModelState)
                {
                    Status = StatusCodes.Status401Unauthorized,
                };
                return Unauthorized(problemDetails);
            }
            var response = _servicioJwt.GenerarToken(user);
            return Ok(response);
        }


        
        
    }
}
    
