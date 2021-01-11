using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using jsreport.AspNetCore;
using jsreport.Binary;
using jsreport.Local;
using jsreport.Types;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace StockLabWeb.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PdfController : ControllerBase
    {
        [HttpPost]
        public async Task<ActionResult<string>> GeneratePdf(string semestre)
        {
            var rs = new LocalReporting().UseBinary(JsReportBinary.GetBinary()).AsUtility().Create();
            var templateHtml = @"<h1 style='color: #5e9ca0;'>Hola</h1>
                                <h2> &nbsp;</h2>
                                <table>
                                <thead>
                                <tr>
                                <td> Example </td>
                                <td>Default</td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                <td> Fernando </td>
                                <td> {{semestre}}</td>
                                </tr>
                                </tbody>
                                </table>
                                <p><strong>&nbsp;</strong></p>";
            var report = await rs.RenderAsync(new RenderRequest()
            {
                Template = new Template
                {
                    Content = templateHtml,
                     
                    Engine = Engine.Handlebars,
                    Recipe = Recipe.ChromePdf
                },
                Data = new
                {
                    nombre = $"Programación Web - Unicesar!!!",
                    semestre = semestre
                }
            });
            return new FileStreamResult(report.Content, "application/pdf");
        }

    }
}