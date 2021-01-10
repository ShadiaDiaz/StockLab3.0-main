using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Entity
{
    public class Chat
    {
        [Key]
        [Column(TypeName = "varchar(5)")]
        public string Codigo { get; set; }
        public string Mensaje { get; set; }
        [NotMapped]
        [Column(TypeName = "varchar(13)")]
        public string IdPersona { get; set; }
        public string Admi { get; set; }
        [NotMapped]
        public Persona Persona { get; set; }
    }
}