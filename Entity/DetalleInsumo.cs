using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class DetalleInsumo
    {
        [Key]
        [Column(TypeName = "varchar(4)")]
        [Required(ErrorMessage = "Proporcione un codigo")]
        [StringLength(4, ErrorMessage = "El codigo no puede ser mayor a 4 caracteres")]
        public string NumeroDetalle { get; set; }
        //[FechaValidation(ErrorMessage = "La fecha no puede ser menor a la actual ")]
        [Column(TypeName = "varchar(20)")]
        [Required(ErrorMessage = "Proporcione una fecha")]
        public string Fecha { get; set; }
        [Column(TypeName = "int")]
        [Required(ErrorMessage = "Proporcione una cantidad")]
        public int Cantidad { get; set; }
        [Column(TypeName = "varchar(5)")]
        [Required(ErrorMessage = "Proporcione un producto")]
        [StringLength(5, ErrorMessage = "el codigo del insumo no puede ser mayor a 5 caracteres")]
        public string CodigoInsumo { get; set; }
        [NotMapped]
        public Insumo Insumo { get; set; }


        
    }
}