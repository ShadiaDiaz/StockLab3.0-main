using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Solicitud
    {
        [Key]
        [Column(TypeName = "varchar(5)")]
        public string Numero { get; set; }
        [FechaValidation(ErrorMessage = "Los dias no pueden ser menor a 8 dias")]
        [Required(ErrorMessage = "Se requiere la fecha")]
        [Column(TypeName = "datetime")]
        public DateTime Fecha { get; set; }
        [Column(TypeName = "varchar(20)")]
        public string FechaEntrega { get; set; }
        [Column(TypeName = "varchar(10)")]
        [StringLength(10, ErrorMessage = "Estado muy largo")]
        public string Estado { get; set; }
        [Column(TypeName = "varchar(20)")]
        [Required(ErrorMessage = "Se requiere la hora")]
        [StringLength(20, ErrorMessage = "Hora demasiado larga")]
        public string Hora { get; set; }
        [Column(TypeName = "varchar(13)")]
        [Required(ErrorMessage = "Se requiere el id del monitor")]
        [StringLength(15, ErrorMessage = "El id del monitor es muy largo")]
        public string Monitor { get; set; }
        [Column(TypeName = ("int"))]
        public int CantidadInsumos { get; set; }
        [Column(TypeName = "varchar(5)")]
        [Required(ErrorMessage = "Proporcione un codigo de asignatura")]
        [StringLength(5, ErrorMessage = "El codigo de la asignatura no puede ser mayor a 5 caracteres")]
        public string CodigoAsignatura { get; set; }
        [Column(TypeName = "varchar(13)")]
        [Required(ErrorMessage = "Proporcione la identificacion")]
        [StringLength(13, ErrorMessage = "La identificacion es muy larga")]
        public string IdPersona { get; set; }

        [Column(TypeName = "varchar(5)")]
        public string IdPeriodo { get; set; }
        
        
        [Column(TypeName = "datetime")]
        public DateTime SolicitudFecha { get; set; }
        [NotMapped]
        public Persona Persona { get; set; }
        [NotMapped]
        public Asignaturas Asignatura { get; set; }
        [NotMapped]
        public DetalleInsumo DetalleInsumo { get; set; }

        [NotMapped]
        public PeriodoAcademico PeriodoAcademico { get; set; }
        
        
        public List<DetalleInsumo> Detalles { get; set; }

        public class FechaValidation : ValidationAttribute
        {
            protected override ValidationResult IsValid(object value, ValidationContext validationContext)
            {
                var fecha = DateTime.Now;

                TimeSpan ts =  DateTime.Parse(value.ToString()) - fecha;
                var days = ts.TotalDays;
                if(days < 8){
                    return new ValidationResult(ErrorMessage);
                }
                else{
                    return ValidationResult.Success;
                }
            }
        }
    }
}