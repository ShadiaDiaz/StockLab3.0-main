using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Asignaturas
    {
        [Key]
        [Column(TypeName = "varchar(5)")]
        [Required(ErrorMessage = "Proporcione un codigo")]
        [StringLength(5, ErrorMessage = "El codigo no puede ser mayor a 5 caracteres")]
        public string Codigo { get; set; }
        [Column(TypeName = "varchar(25)")]
        [Required(ErrorMessage = "Proporcione un nombre")]
        [StringLength(25, ErrorMessage = "El nombre no puede ser tan largo")]
        public string Nombre { get; set; }
        [Column(TypeName = "varchar(30)")]
        [Required(ErrorMessage = "Proporcione el horario")]
        [StringLength(30, ErrorMessage = "El horario no puede ser tan largo")]
        public string Horario { get; set; }
        [NotMapped] public int CantidadReporte { get; set; }
    }
}