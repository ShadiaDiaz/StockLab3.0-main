using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Entity
{
    public class Insumo
    {
        [Key]
        [Column(TypeName = "varchar(5)")]
        [StringLength(4, ErrorMessage = "El codigo no puede ser mayor a 5 caracteres")]
        public string Item { get; set; }
        [Column(TypeName = "varchar(30)")]
        [Required(ErrorMessage = "Proporcione una descripcion")]
        [StringLength(30, ErrorMessage = "La descripcion es muy larga")]
        public string Descripcion { get; set; }
        [Column(TypeName = "varchar(20)")]
        [Required(ErrorMessage = "Proporcione una marca")]
        [StringLength(20,ErrorMessage = "La marca es muy larga")]
        public string Marca { get; set; }
        [Column(TypeName = "int")]
        [Required(ErrorMessage = "Proporcione una cantidad")]
        public int Cantidad { get; set; }
        [Column(TypeName = "int")]
        [Required(ErrorMessage = "Proporcione un stock minimo")]
        public int StockMinimo { get; set; }
    }
}