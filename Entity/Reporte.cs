using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Reporte
    {
        [Key]
        [Column(TypeName = "varchar(5)")]
        public string Codigo { get; set; }
        [Column(TypeName = "varchar(5)")]
        public string IdSolicitud { get; set; }
        
        
        [NotMapped]
        public Solicitud Solicitud { get; set; }
        
        
        
        
    }
}