using Datos;
using Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using Infraestructura;

namespace Logica
{
    public class PersonaService
    {
        private readonly StockLabContext _context;
        private Email Email;

        public PersonaService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarPersonaResponse GuardarPersona(Persona persona)
        {
            try
            {
                Email = new Email();
                var personaresponse = _context.Personas.Find(persona.Identificacion);
                if(personaresponse != null)
                {
                    return new GuardarPersonaResponse("Duplicado");
                }
                Usuario usuario = persona.Usuario;
                usuario.IdPersona = persona.Identificacion;
                persona.Usuario = usuario;
                _context.Personas.Add(persona);
                _context.SaveChanges();
                Email.EnviarEmail(usuario.User, "Registro Exitoso " + DateTime.Now.ToLongTimeString(),usuario.Nombre,usuario.Password);
                return new GuardarPersonaResponse(persona);
            }
            catch(Exception e)
            {
                return new GuardarPersonaResponse($"Error: {e.Message}");
            }
        }

        public BuscarPersonaResponse BuscarPersona(string id)
        {
            try
            {
                var response = _context.Personas.Find(id);
                if(response == null)
                {
                    return new BuscarPersonaResponse($"No existe");
                }
                return new BuscarPersonaResponse(response);
            }
            catch(Exception e)
            {
                return new BuscarPersonaResponse($"Error: {e.Message}");
            }
        }

        public ConsultarPersonasReponse ConsultarMonitores()
        {
            try
            {
                var response = _context.Personas.Include(d => d.Usuario).Where(m => m.Usuario.IdRole == 2).ToList();

                return new ConsultarPersonasReponse(response);
            }
            catch(Exception e)
            {
                return new ConsultarPersonasReponse("Error Aplicacion: "+ e.Message);
            }
        }

        public ConsultarPersonasReponse ConsultarPersonas()
        {
            try
            {
                var response = _context.Personas.ToList();
                return new ConsultarPersonasReponse(response);
            }
            catch(Exception e)
            {
                return new ConsultarPersonasReponse("Error Aplicacion: "+ e.Message);
            }
        }

        public class ConsultarPersonasReponse
        {
            public ConsultarPersonasReponse(List<Persona> personas)
            {
                Error = false;
                Personas = personas;
            }
            public ConsultarPersonasReponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public List<Persona> Personas { get; set; }
        }

        public class BuscarPersonaResponse
        {
            public BuscarPersonaResponse(Persona persona)
            {
                Error = false;
                Persona = persona;
            }

            public BuscarPersonaResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Persona Persona { get; set; }
        }

        public class GuardarPersonaResponse
        {
            public GuardarPersonaResponse(Persona persona)
            {
                Error = false;
                Persona = persona;
            }
            public GuardarPersonaResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Persona Persona { get; set; }
        }
    }
}