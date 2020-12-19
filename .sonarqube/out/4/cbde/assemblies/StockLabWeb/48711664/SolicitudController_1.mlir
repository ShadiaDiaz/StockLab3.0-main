// Skipping function Post(none), it contains poisonous unsupported syntaxes

// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_StockLabWeb.Controllers.SolicitudController.Get$string$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :74 :8) {
^entry (%_numero : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :75 :52)
cbde.store %_numero, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :75 :52)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :77 :27) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :77 :52) // Not a variable of known type: numero
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :77 :27) // _service.BuscarSolicitud(numero) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :79 :16) // Not a variable of known type: response
%6 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :79 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :79 :16)

^1: // BinaryBranchBlock
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :81 :16) // Identifier from another assembly: ModelState
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :81 :41) // "Error al Consutar las solicitudes" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :81 :78) // Not a variable of known type: response
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :81 :78) // response.Mensaje (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :81 :16) // ModelState.AddModelError("Error al Consutar las solicitudes", response.Mensaje) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :82 :69) // Identifier from another assembly: ModelState
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :82 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :84 :19) // Not a variable of known type: response
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :84 :19) // response.Mensaje (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :84 :39) // "No existe" (StringLiteralExpression)
%18 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :84 :19) // comparison of unknown type: response.Mensaje == "No existe"
cond_br %18, ^3, ^4 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :84 :19)

^3: // SimpleBlock
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :86 :20) // Not a variable of known type: detallesproblemas
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :86 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%21 = constant 404 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :86 :47)
br ^5

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :90 :20) // Not a variable of known type: detallesproblemas
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :90 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%24 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :90 :47)
br ^5

^5: // JumpBlock
// Entity from another assembly: BadRequest
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :92 :34) // Not a variable of known type: detallesproblemas
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :92 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %26 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :92 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :94 :45) // Not a variable of known type: response
%28 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :94 :45) // response.Solicitud (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :94 :22) // new SolicitudViewModel(response.Solicitud) (ObjectCreationExpression)
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :94 :19) // Ok(new SolicitudViewModel(response.Solicitud)) (InvocationExpression)
return %30 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :94 :12)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function Put(none), it contains poisonous unsupported syntaxes

func @_StockLabWeb.Controllers.SolicitudController.MapearSolicitud$StockLabWeb.Models.SolicitudInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :129 :8) {
^entry (%_solicitudInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :129 :42)
cbde.store %_solicitudInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :129 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :131 :28) // new Solicitud             {                 Fecha = DateTime.Parse(solicitudInput.Fecha),                 Estado = solicitudInput.Estado,                 CodigoAsignatura = solicitudInput.Asignatura.Codigo,                 IdPersona = solicitudInput.IdPersona,                 Detalles = solicitudInput.Detalles,                 SolicitudFecha = DateTime.Now,                 Hora = solicitudInput.Hora,                 Monitor = solicitudInput.Monitor             } (ObjectCreationExpression)
// Entity from another assembly: DateTime
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :133 :39) // Not a variable of known type: solicitudInput
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :133 :39) // solicitudInput.Fecha (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :133 :24) // DateTime.Parse(solicitudInput.Fecha) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :134 :25) // Not a variable of known type: solicitudInput
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :134 :25) // solicitudInput.Estado (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :135 :35) // Not a variable of known type: solicitudInput
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :135 :35) // solicitudInput.Asignatura (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :135 :35) // solicitudInput.Asignatura.Codigo (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :136 :28) // Not a variable of known type: solicitudInput
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :136 :28) // solicitudInput.IdPersona (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :137 :27) // Not a variable of known type: solicitudInput
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :137 :27) // solicitudInput.Detalles (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :138 :33) // DateTime.Now (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :139 :23) // Not a variable of known type: solicitudInput
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :139 :23) // solicitudInput.Hora (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :140 :26) // Not a variable of known type: solicitudInput
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :140 :26) // solicitudInput.Monitor (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :142 :19) // Not a variable of known type: solicitud
return %20 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\SolicitudController.cs" :142 :12)

^1: // ExitBlock
cbde.unreachable

}
