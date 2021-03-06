using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Logica;
using StockLabWeb.Config;
using Microsoft.Extensions.Options;
using StockLabWeb.Models;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using System.Text;

namespace StockLabWeb.Servicios
{
    public class ServiciosJwt
    {
        private readonly AppSetting _appSetting;
        public ServiciosJwt(IOptions<AppSetting> appSetting)
        {
            _appSetting = appSetting.Value;
        }

        public UsuarioViewModel GenerarToken(Usuario usuario)
        {
            if(usuario == null)
                return null;
            
            var usuarioResponse = new UsuarioViewModel(usuario)
            {
                Usuario = usuario.User,
                Tipo = usuario.Tipo
            };
            
            // authentication successful so generate jwt token
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSetting.Secret);

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[] 
                {
                    new Claim(ClaimTypes.Name, usuario.User.ToString()),
                    new Claim(ClaimTypes.Role, "Rol1"),
                    new Claim(ClaimTypes.Role, "Rol2"),
                }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };

            var token = tokenHandler.CreateToken(tokenDescriptor);
            usuarioResponse.Token = tokenHandler.WriteToken(token);

            return usuarioResponse;
        }
    }
}