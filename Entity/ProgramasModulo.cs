using System;
using System.ComponentModel.DataAnnotations;

namespace Entity
{
    public class ProgramasModulo
    {
        [Key]
        public int Id { get; set; }

        public string Nombre { get; set; }
        public string Ruta { get; set; }
        public int IdModulo { get; set; }
    }
}