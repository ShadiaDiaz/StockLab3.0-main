namespace StockLabWeb.Models
{
    using System.Collections.Generic;
    using Entity;
    public class PersonaInputModel
    {
        public string Identificacion { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Correo { get; set; }
        public int Edad { get; set; }
        public string Sexo { get; set; }
        public Usuario Usuario { get; set; }
    }
    public class PersonaViewModel : PersonaInputModel
    {
        public PersonaViewModel()
        {

        }


        public PersonaViewModel(Persona persona)
        {
            Identificacion = persona.Identificacion;
            Nombre = persona.Nombre;
            Apellidos = persona.Apellidos;
            Correo = persona.Correo;
            Edad = persona.Edad;
            Sexo = persona.Sexo;
            ReporteCantidad = persona.CantidadReporte;
        }

        public int ReporteCantidad { get; set; }
    }
}