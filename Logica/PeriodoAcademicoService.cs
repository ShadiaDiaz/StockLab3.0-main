using System.Linq;
using Datos;
using System;
using Entity;
using System.Collections.Generic;
namespace Logica
{
    public class PeriodoAcademicoService
    {
        private readonly StockLabContext _context;

        public PeriodoAcademicoService(StockLabContext context)
        {
            _context = context;
        }

        public GuardarPeriodoResponse GuardarPeriodo(PeriodoAcademico periodo)
        {
            try
            {
                periodo.Codigo = (_context.PeriodosAcademicos.ToList().Count + 1).ToString();
                _context.PeriodosAcademicos.Add(periodo);
                _context.SaveChanges();
                return new GuardarPeriodoResponse(periodo);
            }
            catch (Exception e)
            {
                return new GuardarPeriodoResponse($"Error en la aplicacion: {e.Message}");
            }
        }

        public class GuardarPeriodoResponse
        {
            public GuardarPeriodoResponse(PeriodoAcademico periodoAcademico)
            {
                Error = false;
                PeriodoAcademico = periodoAcademico;
            }

            public GuardarPeriodoResponse(string mensaje)
            {
                Error = true;
                Mensaje = mensaje;
            }
            public bool Error { get; set; }
            public string Mensaje { get; set; }
            public PeriodoAcademico PeriodoAcademico { get; set; }
        }
    }
}