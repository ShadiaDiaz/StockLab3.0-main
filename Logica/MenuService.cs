using System;
using System.Collections.Generic;
using System.Linq;
using Datos;
using Entity;

namespace Logica
{
    public class MenuService
    {
        private readonly StockLabContext _context;
        public MenuService(StockLabContext context)
        {
            _context = context;
        }

        public ConsultarMenuResponse<ModuloMenu> ConsultarMenu(int idRol)
        {
            try
            {
                var RolPrograma = _context.RolProgramas.ToList();
                var result = RolPrograma.Where(r => r.IdRole == idRol);
                List<ProgramasModulo> programas = new List<ProgramasModulo>();
                foreach (var item in result)
                {
                    programas.Add(_context.Programas.Find(item.IdPrograma));
                }

                List<ModuloMenu> menu = new List<ModuloMenu>();
                foreach (var item in programas)
                {
                    if (menu.Count > 0)
                    {
                        var resultmenu = menu.Find(m => m.Id == item.IdModulo);
                        if (resultmenu == null)
                        {
                            var ResultMenu2 = _context.Modulos.Find(item.IdModulo);
                            ResultMenu2.Programas.Add(item);
                            menu.Add(ResultMenu2);
                        }
                        else
                        {
                            
                            menu.Remove(resultmenu);
                            resultmenu.Programas.Add(item);
                            menu.Add(resultmenu);
                        }
                    }
                    else
                    {
                        var resultmenu = menu.Find(m => m.Id == item.IdModulo);
                        if (resultmenu == null)
                        {
                            var ResultMenu2 = _context.Modulos.Find(item.IdModulo);
                            ResultMenu2.Programas.Add(item);
                            menu.Add(ResultMenu2);
                        }
                    }
                }

                return new ConsultarMenuResponse<ModuloMenu>(menu);
            }
            catch (Exception e)
            {
                return new ConsultarMenuResponse<ModuloMenu>($"Error en la aplicacion {e.Message}", "Error");
            }

            

        } 

        public class ConsultarMenuResponse<T>
        {
            public ConsultarMenuResponse(List<T> menuList )
            {
                Error = false;
                Lista = menuList;
            }

            public ConsultarMenuResponse(string mensaje, string estado)
            {
                Error = true;
                Mensaje = mensaje;
                Estado = estado;
            }
            
            public bool Error { get; set; }
            public string Estado { get; set; }
            public string Mensaje { get; set; }
            public List<T> Lista { get; set; }
        }
    }
}