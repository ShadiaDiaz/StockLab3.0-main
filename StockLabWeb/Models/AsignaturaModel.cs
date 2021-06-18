namespace StockLabWeb.Models
{
    using Entity;
    public class AsignaturaInputModel
    {

        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Horario { get; set; }

    }
    public class AsignaturaViewModel : AsignaturaInputModel
    {
        public AsignaturaViewModel()
        {

        }

        public AsignaturaViewModel(Asignaturas asignatura)
        {
            Codigo = asignatura.Codigo;
            Nombre = asignatura.Nombre;
            Horario = asignatura.Horario;
            CantidadReporte = asignatura.CantidadReporte;
        }
        public int CantidadReporte { get; set; }
    }
}