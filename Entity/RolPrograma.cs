using System.ComponentModel.DataAnnotations;

namespace Entity
{
    public class RolPrograma
    {
        [Key]
        public int Id { get; set; }
        public int IdRole { get; set; }
        public int IdPrograma { get; set; }
    }
}