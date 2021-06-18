using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;
using Microsoft.EntityFrameworkCore;

namespace Logica
{
    public class ReporteService
    {
        private readonly StockLabContext _context;

        public ReporteService(StockLabContext context)
        {
            _context = context;
        }

        public ClaseRespuesta<Insumo> ConsultarInsumoSolicitados()
        {
            try
            {
                List<Solicitud> Solicitudes = _context.Solicitudes.Include(s => s.Detalles).ToList().OrderBy(s => int.Parse(s.Numero)).ToList();
                List<Insumo> Insumos = _context.Insumos.ToList();
                Insumos.ForEach(d => d.Cantidad = 0);
                foreach (var solicitud in Solicitudes)
                {
                    foreach (var detalle in solicitud.Detalles)
                    {
                        foreach (var item in Insumos)
                        {
                            if (detalle.CodigoInsumo == item.Item)
                            {
                                item.Cantidad += detalle.Cantidad;
                            }
                        }  
                    }
                      
                }

                return new ClaseRespuesta<Insumo>(Insumos.OrderByDescending(d => d.Cantidad).ToList());
            }
            catch (Exception e)
            {
                return new ClaseRespuesta<Insumo>($"Error: {e.Message}", "Error Aplicacion");
            }
        }

        public ClaseRespuesta<Persona> ConsultarInsumosPorPersona()
        {
            try
            {
                List<Solicitud> Solicitudes = _context.Solicitudes.Include(s => s.Detalles).ToList().OrderBy(s => int.Parse(s.Numero)).ToList();
                List<Persona> Personas = _context.Personas.Include(d => d.Usuario).ToList();
                Personas = Personas.Where(p => p.Usuario.IdRole == 1).ToList();
                Personas.ForEach(p => p.CantidadReporte = 0);
                foreach (var solicitud in Solicitudes)
                {
                    foreach (var item in Personas)
                    {
                        foreach (var detalle in solicitud.Detalles)
                        {
                            if (solicitud.IdPersona == item.Identificacion)
                            {
                                item.CantidadReporte += detalle.Cantidad;
                            }
                        }
                    
                    }

                }

                return new ClaseRespuesta<Persona>(Personas.OrderByDescending(p => p.CantidadReporte).ToList());
            }
            catch (Exception e)
            {
                return new ClaseRespuesta<Persona>($"Error: {e.Message}", "Error Aplicacion");
            }
            
        }

        public ClaseRespuesta<Persona> ConsultarSolicitudesPorPersona()
        {
            try
            {
                List<Solicitud> Solicitudes = _context.Solicitudes.Include(s => s.Detalles).ToList().OrderBy(s => int.Parse(s.Numero)).ToList();
                List<Persona> Personas = _context.Personas.Include(d => d.Usuario).ToList();
                Personas = Personas.Where(p => p.Usuario.IdRole == 1).ToList();
                Personas.ForEach(p => p.CantidadReporte = 0);

                foreach (var item in Personas)
                {
                    foreach (var solicitud in Solicitudes)
                    {
                        if (item.Identificacion == solicitud.IdPersona)
                        {
                            item.CantidadReporte += 1;
                        }
                    }
                }

                return new ClaseRespuesta<Persona>(Personas.OrderByDescending(p => p.CantidadReporte).ToList());
            }
            catch (Exception e)
            {
                return new ClaseRespuesta<Persona>($"Error: {e.Message}", "Error Aplicacion");
            }
        }

        public ClaseRespuesta<Asignaturas> ConsultarAsignaturasMasSolicitadas()
        {
            try
            {
                List<Solicitud> Solicitudes = _context.Solicitudes.Include(s => s.Detalles).ToList().OrderBy(s => int.Parse(s.Numero)).ToList();
                List<Asignaturas> Asignaturas = _context.Asignaturas.ToList();
                Asignaturas.ForEach(d => d.CantidadReporte = 0);

                foreach (var solicitud in Solicitudes)
                {
                    foreach (var asignatura in Asignaturas)
                    {
                        if (solicitud.CodigoAsignatura == asignatura.Codigo)
                        {
                            asignatura.CantidadReporte += 1;
                        }
                    }
                }

                return new ClaseRespuesta<Asignaturas>(Asignaturas.OrderByDescending(a => a.CantidadReporte).ToList());
            }
            catch (Exception e)
            {
                return new ClaseRespuesta<Asignaturas>($"Error: {e.Message}", "Error Aplicacion");
            }
            
        }

        public ClaseRespuesta<Insumo> ReporteStockMinimoInsumos()
        {
            try
            {
                List<Insumo> insumos = _context.Insumos.ToList();

                return new ClaseRespuesta<Insumo>(insumos.Where(i => i.StockMinimo >= i.Cantidad).OrderByDescending(i => i.Cantidad).ToList());
            }
            catch (Exception e)
            {
                return new ClaseRespuesta<Insumo>($"Error: {e.Message}", "Error Aplicacion");
            }
        }
    }
}