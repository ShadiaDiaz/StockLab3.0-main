namespace StockLabWeb.Models
{
    using Entity;
    public class InsumoInputModel
    {
        
        public string Item { get; set; }
        public string Descripcion { get; set; }
        public string Marca { get; set; }
        public int Cantidad { get; set; }
    }
      public class InsumoViewModel : InsumoInputModel
    {
        public InsumoViewModel()
        {

        }

        public InsumoViewModel(Insumo insumo)
        {
            Item = insumo.Item;
            Descripcion = insumo.Descripcion;
            Marca = insumo.Marca;
            Cantidad = insumo.Cantidad;
            
        }
    }
}