﻿using System.Linq;
using Datos;
using System;
using Entity;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Logica
{
    public class SolicitudService
    {
        private readonly StockLabContext _context;
        public SolicitudService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarSolicitudResponse GuardarSolicitud(Solicitud solicitud)
        {
            try
            {
                int total = _context.Solicitudes.ToList().Count;
                solicitud.Numero = (total + 1).ToString();
                int suma = solicitud.Detalles.Sum(c => c.Cantidad);
                solicitud.CantidadInsumos = suma;
                solicitud.IdPeriodo = _context.PeriodosAcademicos.ToList().Max(d => d.Codigo);
                var insumos = _context.Insumos.ToList();
                foreach (var item in solicitud.Detalles)
                {
                    item.NumeroDetalle += solicitud.Numero;
                    foreach (var item2 in insumos)
                    {
                        if(item.CodigoInsumo == item2.Item)
                        {
                            if(item.Cantidad > item2.Cantidad)
                            {
                                return new GuardarSolicitudResponse("Cantidad Insuficiente");
                            }
                        }
                    }
                }
                _context.Solicitudes.Add(solicitud);
                _context.SaveChanges();

                Reporte reporte = new Reporte();
                reporte.Codigo = (_context.Reportes.ToList().Count + 1).ToString();
                reporte.IdSolicitud = solicitud.Numero;
                _context.Reportes.Add(reporte);
                return new GuardarSolicitudResponse(solicitud);
            }
            catch (Exception e)
            {
                return new GuardarSolicitudResponse($"Error: {e.Message}");
            }
        }

        public ConsultarSolicitudResponse ConsultarSolicitudes()
        {
            try
            {
                List<Solicitud> Solicitudes = _context.Solicitudes.Include(s => s.Detalles).ToList();
                foreach (var item in Solicitudes)
                {
                    item.Asignatura = _context.Asignaturas.Find(item.CodigoAsignatura);
                    item.Persona = _context.Personas.Find(item.IdPersona);
                    item.PeriodoAcademico = _context.PeriodosAcademicos.Find(item.IdPeriodo);
                    foreach (var item2 in item.Detalles)
                    {
                        item2.Insumo = _context.Insumos.Find(item2.CodigoInsumo);
                    }
                }
                return new ConsultarSolicitudResponse(Solicitudes);
            }
            catch (Exception e)
            {
                return new ConsultarSolicitudResponse($"Error {e.Message}");
            }
        }

        public BuscarSolicitudResponse BuscarSolicitud(string numero)
        {
            try
            {
                var solicitudesresponse = _context.Solicitudes.Include(d => d.Detalles).ToList();
                var solicitudresponse = solicitudesresponse.Find(s => s.Numero == numero);
                if(solicitudresponse != null)
                {
                    solicitudresponse.Asignatura = _context.Asignaturas.Find(solicitudresponse.CodigoAsignatura);
                    solicitudresponse.Persona = _context.Personas.Find(solicitudresponse.IdPersona);
                    solicitudresponse.PeriodoAcademico = _context.PeriodosAcademicos.Find(solicitudresponse.IdPeriodo);
                    foreach (var item in solicitudresponse.Detalles)
                    {
                        item.Insumo = _context.Insumos.Find(item.CodigoInsumo);
                    }
                    return new BuscarSolicitudResponse(solicitudresponse);
                }
                else
                {
                    return new BuscarSolicitudResponse($"No existe");
                }
            }
            catch(Exception e)
            {
                return new BuscarSolicitudResponse($"Error: {e.Message}");
            }
        }

        public ActualizarSolicitudResponse ActualizarEstado(string numero, string estado)
        {
            try
            {
                var solicitudresponse = _context.Solicitudes.Find(numero);
                if(solicitudresponse != null)
                {
                    solicitudresponse.Estado = estado;
                    _context.Solicitudes.Update(solicitudresponse);
                    _context.SaveChanges();
                    return new ActualizarSolicitudResponse(solicitudresponse);
                }
                else
                {
                    return new ActualizarSolicitudResponse("La solicitud No existe","No existe");
                }
            }
            catch(Exception e)
            {
                return new ActualizarSolicitudResponse($"Error: {e.Message}", "Error Aplicacion");
            }
        }

        public ActualizarSolicitudResponse AprobarSolicitud(string numero)
        {
            try
            {
                var solicitudes = _context.Solicitudes.Include(d => d.Detalles).ToList();
                var solicitudresponse = solicitudes.Find(s =>s.Numero == numero);
                var insumos = _context.Insumos.ToList();
                if(solicitudresponse != null)
                {
                    solicitudresponse.Estado = "Aprobado";

                    foreach (var item in solicitudresponse.Detalles)
                    {
                        foreach (var item2 in insumos)
                        {
                            if(item.CodigoInsumo == item2.Item)
                            {
                                if(item.Cantidad > item2.Cantidad)
                                {
                                    return new ActualizarSolicitudResponse("Los insumos son insuficientes","Insuficiente");
                                }
                                else
                                {
                                    var responseInsumo = _context.Insumos.Find(item2.Item);
                                    responseInsumo.Cantidad -= item.Cantidad;
                                    _context.Insumos.Update(responseInsumo);
                                }
                            }
                        }
                    }
                    _context.Solicitudes.Update(solicitudresponse);
                    _context.SaveChanges();
                    return new ActualizarSolicitudResponse(solicitudresponse);
                }
                else
                {
                    return new ActualizarSolicitudResponse("No exsite la solicitud", "No existe" );
                }
            }
            catch(Exception e)
            {
                return new ActualizarSolicitudResponse($"Error: {e.Message}", "Error Aplicacion");
            }
        }

        public class ActualizarSolicitudResponse
        {
            public ActualizarSolicitudResponse(Solicitud solicitud)
            {
                Solicitud = solicitud;
                Error = false;
            }
            public ActualizarSolicitudResponse(string mensaje, string estado)
            {
                Error = true;
                Mensaje = mensaje;
                Estado = estado;
            }
            public string Estado { get; set; }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Solicitud Solicitud { get; set; }
        }

        public class BuscarSolicitudResponse
        {
            public BuscarSolicitudResponse(Solicitud solicitud)
            {
                Error = false;
                Solicitud = solicitud;
            }

            public BuscarSolicitudResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Solicitud Solicitud { get; set; }
        }
        public class ConsultarSolicitudResponse
        {
            public ConsultarSolicitudResponse(List<Solicitud> solicitudes)
            {
                Error = false;
                Solicitudes = solicitudes;
            }

            public ConsultarSolicitudResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public List<Solicitud> Solicitudes { get; set; }
        }
        public class GuardarSolicitudResponse
        {
            public GuardarSolicitudResponse(Solicitud solicitud)
            {
                Error = false;
                Solicitud = solicitud;
            }

            public GuardarSolicitudResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public Solicitud Solicitud { get; set; }
        }
    }
}