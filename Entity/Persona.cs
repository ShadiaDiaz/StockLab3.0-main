using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Persona
    {
        [Key]
        [Column(TypeName = "varchar(13)")]
        [Required(ErrorMessage = "Proporcione la identificacion")]
        [StringLength(13, ErrorMessage = "La identificacion es muy larga")]
        public string Identificacion { get; set; }
        [Column(TypeName = "varchar(25)")]
        [Required(ErrorMessage = "Proporcione un nombre")]
        [StringLength(25, ErrorMessage = "El nombre es muy largo")]
        public string Nombre { get; set; }
        [Column(TypeName = "varchar(25)")]
        [Required(ErrorMessage = "Proporcione un apellido")]
        [StringLength(25, ErrorMessage = "El apellido es muy largo")]
        public string Apellidos { get; set; }
        [Column(TypeName = "varchar(30)")]
        [DataType(DataType.EmailAddress,ErrorMessage = "Debe ser un email valido")]
        public string Correo { get; set; }
        [Column(TypeName = "int")]
        [Required(ErrorMessage = "Proporcione una edad")]
        [EdadValidacion(ErrorMessage = "Error en la edad")]
        public int Edad { get; set; }
        [Column(TypeName = "varchar(11)")]
        [SexoValidacion(ErrorMessage = "El sexo es invalido")]
        [StringLength(11, ErrorMessage = "El sexo es demasiado largo")]
        public string Sexo { get; set; }
        public Usuario Usuario { get; set; }
        [NotMapped]
        public List<Solicitud> Solicitud { get; set; }
        [NotMapped] public int CantidadReporte { get; set; }


        public class SexoValidacion : ValidationAttribute
        {
            protected override ValidationResult IsValid(object value, ValidationContext validationContext)
            {
                if ((value.ToString().ToLower() == "masculino") || (value.ToString().ToLower() == "femenino"))
                {
                    return ValidationResult.Success;
                }
                else
                {
                    return new ValidationResult(ErrorMessage);
                }
            }
        }

        public class EdadValidacion : ValidationAttribute
        {
            protected override ValidationResult IsValid(object value, ValidationContext validationContext)
            {
                if (((int.Parse(value.ToString()) > 18) || (int.Parse(value.ToString()) < 100)))
                {
                    return ValidationResult.Success;
                }
                else
                {
                    return new ValidationResult(ErrorMessage);
                }
            }
        }
    }
}