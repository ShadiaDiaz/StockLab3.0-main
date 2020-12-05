using System;
using System.Net.Mail;
using Entity;

namespace Infraestructura
{
    public class Email
    {
        private MailMessage email;
        private SmtpClient smtp;
        public Email () {
            smtp = new SmtpClient ();
        }
        private void ConfigurarSmt () {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential ("StockLabWeb@gmail.com", "Proyectoupc20");
        }
        private void ConfigurarEmail (string correoElectronico,string encabezado, string nombre, string password) {

            email = new MailMessage ();
            email.To.Add (correoElectronico);
            email.From = new MailAddress ("StockLabWeb@gmail.com");
            email.Subject = encabezado;
            email.Body =  $"<b>Sr {nombre} </b" +
                $">Su registro se ha realizado correctamente. " + "</br>"
                +$"Su usuario es: {correoElectronico} y su contraseña es: {password}" +"</br>"
                +"No de esta contraseña a nadie.";
            email.IsBodyHtml = true;
            email.Priority = MailPriority.Normal;
        }
        public string EnviarEmail (string correoElectronico, string encabezado, string nombre, string password) {
            try {
                ConfigurarSmt ();
                ConfigurarEmail (correoElectronico, encabezado, nombre, password);
                smtp.Send (email);
                return ("Correo enviado Satifactoriamente");
            } catch (Exception e) {
                return ("error al enviar correo" + e.Message);
            } finally {
                email.Dispose ();
            }
        }
    }
}