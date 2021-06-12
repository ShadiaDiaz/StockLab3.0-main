using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class ModuloMenu
    {
        [Key]
        public int Id { get; set; }

        public string Nombre { get; set; }
        [NotMapped] public List<ProgramasModulo> Programas { get; set; }

        public ModuloMenu()
        {
            Programas = new List<ProgramasModulo>();
        }
    }
}