using Datos;
using Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Logica
{
    public class PersonaService
    {
        private readonly StockLabContext _context;

        public PersonaService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarPersonaResponse GuardarPersona(Persona persona)
        {
            try
            {
                var personaresponse = _context.Personas.Find(persona.Identificacion);
                if(personaresponse == null)
                {
                    Usuario usuario = persona.Usuario;
                    usuario.IdPersona = persona.Identificacion;
                    persona.Usuario = usuario;
                    _context.Personas.Add(persona);
                    _context.SaveChanges();
                    return new GuardarPersonaResponse(persona);
                }
                else
                {
                    return new GuardarPersonaResponse("Duplicado");
                }
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
                else
                {
                    return new BuscarPersonaResponse(response);
                }
                
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
                var response = _context.Personas.Include(d => d.Usuario).Where(m => m.Usuario.Tipo == "Monitor").ToList();

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