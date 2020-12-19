func @_Infraestructura.Email.ConfigurarSmt$$() -> () loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :13 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :14 :12) // Not a variable of known type: smtp
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :14 :12) // smtp.Host (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :14 :24) // "smtp.gmail.com" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :15 :12) // Not a variable of known type: smtp
%4 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :15 :12) // smtp.Port (SimpleMemberAccessExpression)
%5 = constant 587 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :15 :24)
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :16 :12) // Not a variable of known type: smtp
%7 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :16 :12) // smtp.EnableSsl (SimpleMemberAccessExpression)
%8 = constant 1 : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :16 :29) // true
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :17 :12) // Not a variable of known type: smtp
%10 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :17 :12) // smtp.UseDefaultCredentials (SimpleMemberAccessExpression)
%11 = constant 0 : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :17 :41) // false
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :18 :12) // Not a variable of known type: smtp
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :18 :12) // smtp.Credentials (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :18 :65) // "StockLabWeb@gmail.com" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :18 :90) // "Proyectoupc20" (StringLiteralExpression)
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :18 :31) // new System.Net.NetworkCredential ("StockLabWeb@gmail.com", "Proyectoupc20") (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Infraestructura.Email.ConfigurarEmail$string.string.string.string$(none, none, none, none) -> () loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :8) {
^entry (%_correoElectronico : none, %_encabezado : none, %_nombre : none, %_password : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :38)
cbde.store %_correoElectronico, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :38)
%1 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :63)
cbde.store %_encabezado, %1 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :63)
%2 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :82)
cbde.store %_nombre, %2 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :82)
%3 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :97)
cbde.store %_password, %3 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :20 :97)
br ^0

^0: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :22 :20) // new MailMessage () (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :23 :12) // Not a variable of known type: email
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :23 :12) // email.To (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :23 :26) // Not a variable of known type: correoElectronico
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :23 :12) // email.To.Add (correoElectronico) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :24 :12) // Not a variable of known type: email
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :24 :12) // email.From (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :24 :42) // "StockLabWeb@gmail.com" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :24 :25) // new MailAddress ("StockLabWeb@gmail.com") (ObjectCreationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :25 :12) // Not a variable of known type: email
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :25 :12) // email.Subject (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :25 :28) // Not a variable of known type: encabezado
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :12) // Not a variable of known type: email
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :12) // email.Body (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :35) // Not a variable of known type: nombre
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :26) // $"<b>Sr {nombre} </b" (InterpolatedStringExpression)
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :27 :16) // $">Su registro se ha realizado correctamente. " (InterpolatedStringExpression)
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :26) // Binary expression on unsupported types $"<b>Sr {nombre} </b" +                 $">Su registro se ha realizado correctamente. "
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :27 :66) // "</br>" (StringLiteralExpression)
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :26) // Binary expression on unsupported types $"<b>Sr {nombre} </b" +                 $">Su registro se ha realizado correctamente. " + "</br>"
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :28 :35) // Not a variable of known type: correoElectronico
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :28 :75) // Not a variable of known type: password
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :28 :17) // $"Su usuario es: {correoElectronico} y su contraseña es: {password}" (InterpolatedStringExpression)
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :26) // Binary expression on unsupported types $"<b>Sr {nombre} </b" +                 $">Su registro se ha realizado correctamente. " + "</br>"                 +$"Su usuario es: {correoElectronico} y su contraseña es: {password}"
%28 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :28 :87) // "</br>" (StringLiteralExpression)
%29 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :26) // Binary expression on unsupported types $"<b>Sr {nombre} </b" +                 $">Su registro se ha realizado correctamente. " + "</br>"                 +$"Su usuario es: {correoElectronico} y su contraseña es: {password}" +"</br>"
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :29 :17) // "No de esta contraseña a nadie." (StringLiteralExpression)
%31 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :26 :26) // Binary expression on unsupported types $"<b>Sr {nombre} </b" +                 $">Su registro se ha realizado correctamente. " + "</br>"                 +$"Su usuario es: {correoElectronico} y su contraseña es: {password}" +"</br>"                 +"No de esta contraseña a nadie."
%32 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :30 :12) // Not a variable of known type: email
%33 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :30 :12) // email.IsBodyHtml (SimpleMemberAccessExpression)
%34 = constant 1 : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :30 :31) // true
%35 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :31 :12) // Not a variable of known type: email
%36 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :31 :12) // email.Priority (SimpleMemberAccessExpression)
// Entity from another assembly: MailPriority
%37 = constant unit loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Infraestructura\\Email.cs" :31 :29) // MailPriority.Normal (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function EnviarEmail(none, none, none, none), it contains poisonous unsupported syntaxes

