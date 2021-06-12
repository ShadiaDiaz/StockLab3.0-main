using System.Linq;
using Datos;
using System;
using Entity;
using System.Collections.Generic;

namespace Logica
{
    public class InsumoService
    {
        private readonly StockLabContext _context;
        public InsumoService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarInsumoResponse GuardarInsumo(Insumo insumo)
        {
            try
            {
                int total = _context.Insumos.ToList().Count;
                insumo.Item = (total + 1) + "";
                _context.Insumos.Add(insumo);
                _context.SaveChanges();
                return new GuardarInsumoResponse(insumo);
            }
            catch(Exception e)
            {
                return new GuardarInsumoResponse($"Error en la aplicacion: {e.Message}", "Error");
            }
        }


        public GuardarInsumoResponse ActualizarCantidadInsumo(string codigo, int cantidad)
        {
            try
            {
                var insumoresponse = _context.Insumos.Find(codigo);
                if(insumoresponse == null)
                {
                    return new GuardarInsumoResponse("No se encontro el insumo", "No existe");
                }
                insumoresponse.Cantidad += cantidad;
                _context.Insumos.Update(insumoresponse);
                _context.SaveChanges();
                return new GuardarInsumoResponse(insumoresponse);
            }
            catch(Exception e)
            {
                return new GuardarInsumoResponse($"Error en la aplicacion: {e.Message}", "Error Aplicacion");
            }
        }

        public ConsultarInsumoResponse ConsultarInsumos()
        {
            try
            {
                return new ConsultarInsumoResponse(_context.Insumos.ToList());
            }
            catch(Exception e)
            {
                return new ConsultarInsumoResponse($"Error {e.Message}");
            }
        }

        public GuardarInsumoResponse BuscarInsumo(string codigo){
            try
            {
                var insumoresponse = _context.Insumos.Find(codigo);

                if(insumoresponse == null)
                {
                    return new GuardarInsumoResponse("El insumo no se encuentra registrado","No existe");
                }
                return new GuardarInsumoResponse(insumoresponse);
            }
            catch(Exception e)
            {
                return new GuardarInsumoResponse($"Error en la aplicacion: {e.Message}", "Error");
            }
        }

        public class ConsultarInsumoResponse
        {
            public ConsultarInsumoResponse(List<Insumo> insumos)
            {
                Error = false;
                Insumos = insumos;
            }

            public ConsultarInsumoResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public List<Insumo> Insumos { get; set; }
        }
        public class GuardarInsumoResponse
        {
            public GuardarInsumoResponse(Insumo insumo)
            {
                Error = false;
                Insumo = insumo;
            }

            public GuardarInsumoResponse(string mensaje, string estado)
            {
                Error = true;
                Mensaje = mensaje;
                Estado = estado;
            }
            public string Estado { get; set; }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Insumo Insumo { get; set; }
        }
    }
}