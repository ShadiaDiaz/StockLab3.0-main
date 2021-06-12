using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Role
    {
        [Key]
        public int Codigo { get; set; }
        public string Nombre { get; set; }

        public Role( string nombre, int codigo)
        {
            Codigo = codigo;
            Nombre = nombre;
        }
    }
}