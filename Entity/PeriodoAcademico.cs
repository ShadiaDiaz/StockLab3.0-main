using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class PeriodoAcademico
    {
        [Key]
        [Column(TypeName= "varchar(5)")]
        public string Codigo { get; set; }

        [Required(ErrorMessage = "Se necesita el periodo")]
        [Column(TypeName = "varchar(10)")]
        [MaxLength(10, ErrorMessage = "Maximo 10 caracteres")]
        public string Periodo { get; set; }

        [Column(TypeName = "int")]
        [Required(ErrorMessage = "Se necesita el corte")]
        [MaxLength(1, ErrorMessage = "Maximo 1 caracter")]
        public int Corte { get; set; }
        
        
        
        
        
        
    }
}