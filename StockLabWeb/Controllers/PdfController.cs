using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using jsreport.AspNetCore;
using jsreport.Binary;
using jsreport.Local;
using jsreport.Types;
using Datos;
using Entity;
using Logica;

namespace StockLabWeb.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PdfController : ControllerBase
    {
        private readonly SolicitudService _service;

        public PdfController(StockLabContext context)
        {
            _service = new SolicitudService(context);
        }

        [HttpGet("{solicitud2}")]
        public async Task<ActionResult<string>>
        GeneratePdf(string solicitud2)
        {
            var response = _service.BuscarSolicitud(solicitud2);
            Solicitud solicitud = new Solicitud();
            if (response.Error)
            {
            }
            else
            {
                solicitud = response.Solicitud;
            }
            var rs =
                new LocalReporting()
                    .UseBinary(JsReportBinary.GetBinary())
                    .AsUtility()
                    .Create();
            var templateHtml =
                @"<html lang='en'>

<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'
        integrity='sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1' crossorigin='anonymous'>
    <title>Document</title>
</head>

<body>
    <div class='container'>
        <div>
            <form>
                <header style='text-align: center;'>
                    <h1>Consulta de solicitud</h1>
                </header>

                <div style='padding-top: 50px;'>

                </div>

                <div class='card'>
                    <table class='table table-striped table-bordered table-sm'>
                        <tbody>
                            <tr>
                                <td>ID</td>
                                <td>{{solicitud.Persona.Identificacion}}</td>
                            </tr>

                            <tr>
                                <td>Docente</td>
                                <td>{{solicitud.Persona.Nombre}} {{solicitud.Persona.Apellidos}}</td>
                            </tr>

                            <tr>
                                <td>Estado</td>
                                <div>
                                    <td>{{solicitud.Estado}}</td>
                                </div>
                            </tr>

                            <tr>
                                <td>Periodo Academico</td>
                                <td>{{solicitud.PeriodoAcademico.Periodo}} Corte: {{solicitud.PeriodoAcademico.Corte}}</td>
                            </tr>

                            <tr>
                                <td>Asignatura</td>
                                <td>{{solicitud.Asignatura.Nombre}}</td>
                            </tr>

                            <tr>
                                <td>Monitor</td>
                                <td>{{solicitud.Monitor}}</td>
                            </tr>

                            <tr>
                                <td>Cantidad Insumos</td>
                                <td>{{solicitud.CantidadInsumos}}</td>
                            </tr>
                            <tr>
                                <td>Fecha y hora solicitud</td>
                                <td>{{solicitud.SolicitudFecha}}</td>
                            </tr>
                            <tr>
                                <td>Fecha y Hora entrega</td>
                                <td>{{solicitud.Fecha}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <table class='table'>
                    <thead>
                        <tr>
                            <th scope='col'>Items</th>
                            <th scope='col'>Descripción</th>
                            <th scope='col'>Marca</th>
                            <th scope='col'>Cantidad</th>
                        </tr>
                    </thead>
                    <tbody>
                        {{#each detalles}}
                            <tr>
                                <td> {{NumeroDetalle}} </td>
                                <td> {{Insumo.Descripcion}} </td>
                                <td> {{Insumo.Marca}} </td>
                                <td> {{Cantidad}} </td>
                            </tr>
                        {{/each}}
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js'
        integrity='sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW'
        crossorigin='anonymous'></script>
</body>

</html>";
            var report =
                await rs
                    .RenderAsync(new RenderRequest()
                    {
                        Template =
                            new Template {
                                Content = templateHtml,
                                Engine = Engine.Handlebars,
                                Recipe = Recipe.ChromePdf
                            },
                        Data =
                            new {
                                nombre = $"Programación Web - Unicesar!!!",
                                solicitud = solicitud,
                                detalles = solicitud.Detalles
                            }
                    });
            return new FileStreamResult(report.Content, "application/pdf");
        }
    }
}
