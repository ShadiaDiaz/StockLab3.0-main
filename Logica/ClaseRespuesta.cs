using System.Collections.Generic;

namespace Logica
{
    public class ClaseRespuesta<T>
    {
        public ClaseRespuesta(T objeto)
        {
            Error = false;
            Objeto = objeto;
        }

        public ClaseRespuesta(string mensaje, string estado)
        {
            Error = true;
            Mensaje = mensaje;
            Estado = estado;
        }

        public ClaseRespuesta(List<T> lista)
        {
            Error = false;
            Lista = lista;
        }
        public string Estado { get; set; }
        public bool Error { get; set; }
        public string Mensaje { get; set; }
        public T Objeto { get; set; }
        public List<T> Lista { get; set; }
    }
}