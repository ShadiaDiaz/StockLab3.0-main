using System;
using System.Collections.Generic;
using Entity;

namespace StockLabWeb.Models
{
    public class SolicitudInputModel
    {
        public string Numero { get; set; }
        public string Fecha { get; set; }
        public string FechaSolicitud { get; set; }
        public string Estado { get; set; }
        public string Hora { get; set; }
        public string Monitor { get; set; }
        public string IdPersona { get; set; }
        public string CodigoAsignatura { get; set; }
        public Asignaturas Asignatura { get; set; }
        public List<DetalleInsumo> Detalles { get; set; }
        public PeriodoAcademico PeriodoAcademico { get; set; }
        public Persona Persona { get; set; }
    }

    public class SolicitudViewModel : SolicitudInputModel
    {
        public SolicitudViewModel(){}

        public SolicitudViewModel(Solicitud solicitud)
        {
            Numero = solicitud.Numero;
            Fecha = solicitud.Fecha.Year +"-"+solicitud.Fecha.Month+"-"+solicitud.Fecha.Day;
            FechaSolicitud = solicitud.SolicitudFecha.ToShortDateString();
            Estado = solicitud.Estado;
            Hora = solicitud.Hora;
            Monitor = solicitud.Monitor;
            IdPersona = solicitud.IdPersona;
            Asignatura = solicitud.Asignatura;
            Detalles = solicitud.Detalles;
            Persona = solicitud.Persona;
            cantidadinsumos = solicitud.CantidadInsumos;
            PeriodoAcademico = solicitud.PeriodoAcademico;
        }
        public int cantidadinsumos { get; set; }
    }
}