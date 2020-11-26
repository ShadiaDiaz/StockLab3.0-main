using System;
using System.Collections.Generic;
using Entity;
using Datos;
using System.Linq;

namespace Logica
{
    public class AsignaturaService
    {
        private readonly StockLabContext _context;

        public AsignaturaService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarAsignaturaResponse GuardarAsignatura(Asignaturas asignatura)
        {
            try
            {
                var findasignatura = _context.Asignaturas.Find(asignatura.Codigo);
                if(findasignatura == null)
                {
                    _context.Asignaturas.Add(asignatura);
                    _context.SaveChanges();
                    return new GuardarAsignaturaResponse(asignatura);
                }
                else
                {
                    return new GuardarAsignaturaResponse("El codigo de la asignatura ya se encuentra registrado","Duplicado");
                }
            }
            catch(Exception e)
            {
                return new GuardarAsignaturaResponse($"Error en la aplicacion: {e.Message}", "Error");
            }
        }

        public ConsultarAsignaturaResponse ConsultarAsignaturas()
        {
            try
            {
                return new ConsultarAsignaturaResponse(_context.Asignaturas.ToList());
            }
            catch(Exception e)
            {
                return new ConsultarAsignaturaResponse($"Error en la aplicacion: {e.Message}");
            }
        }

        public class ConsultarAsignaturaResponse
        {
            public ConsultarAsignaturaResponse(List<Asignaturas> asignaturas)
            {
                Error = false;
                Asignaturas = asignaturas;
            }

            public ConsultarAsignaturaResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public List<Asignaturas> Asignaturas { get; set; }
        }
        public class GuardarAsignaturaResponse
        {
            public GuardarAsignaturaResponse(Asignaturas asignatura)
            {
                Asignatura = asignatura;
                Error = false;
            }

            public GuardarAsignaturaResponse(string mensaje, string estado)
            {
                Error = true;
                Mensaje = mensaje;
                Estado = estado;
            }
            public string Estado { get; set; }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Asignaturas Asignatura { get; set; }
        }
    }
}