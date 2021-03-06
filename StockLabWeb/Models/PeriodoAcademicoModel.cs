namespace StockLabWeb.Models
{
    public class PeriodoAcademicoInputModel
    {
        public string Codigo { get; set; }
        public string Periodo { get; set; }
        public string Corte { get; set; }
    }

    public class PeriodoAcademicoViewModel : PeriodoAcademicoInputModel
    {
        public PeriodoAcademicoViewModel(){}
    }
}