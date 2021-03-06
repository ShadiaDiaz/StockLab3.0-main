func @_StockLabWeb.Controllers.AsignaturasController.Post$StockLabWeb.Models.AsignaturaInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :24 :8) {
^entry (%_asignaturaInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :25 :54)
cbde.store %_asignaturaInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :25 :54)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearAsignatura
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :27 :54) // Not a variable of known type: asignaturaInput
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :27 :37) // MapearAsignatura(asignaturaInput) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :28 :27) // Not a variable of known type: _service
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :28 :54) // Not a variable of known type: asignatura
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :28 :27) // _service.GuardarAsignatura(asignatura) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :29 :15) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :29 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :29 :15)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :31 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :31 :41) // "Error al guardar asignatura" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :31 :72) // Not a variable of known type: response
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :31 :72) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :31 :16) // ModelState.AddModelError("Error al guardar asignatura", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :32 :69) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :32 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :33 :16) // Not a variable of known type: response
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :33 :16) // response.Estado (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :33 :35) // "Duplicado" (StringLiteralExpression)
%21 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :33 :16) // comparison of unknown type: response.Estado == "Duplicado"
cond_br %21, ^3, ^4 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :33 :16)

^3: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :35 :16) // Not a variable of known type: detallesproblemas
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :35 :16) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%24 = constant 400 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :35 :43)
br ^4

^4: // BinaryBranchBlock
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :37 :15) // Not a variable of known type: response
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :37 :15) // response.Estado (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :37 :34) // "Error" (StringLiteralExpression)
%28 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :37 :15) // comparison of unknown type: response.Estado == "Error"
cond_br %28, ^5, ^6 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :37 :15)

^5: // SimpleBlock
%29 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :39 :16) // Not a variable of known type: detallesproblemas
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :39 :16) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%31 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :39 :43)
br ^6

^6: // JumpBlock
// Entity from another assembly: BadRequest
%32 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :41 :34) // Not a variable of known type: detallesproblemas
%33 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :41 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %33 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :41 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%34 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :43 :22) // Not a variable of known type: response
%35 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :43 :22) // response.Asignatura (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :43 :19) // Ok(response.Asignatura) (InvocationExpression)
return %36 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :43 :12)

^7: // ExitBlock
cbde.unreachable

}
// Skipping function Get(), it contains poisonous unsupported syntaxes

func @_StockLabWeb.Controllers.AsignaturasController.MapearAsignatura$StockLabWeb.Models.AsignaturaInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :61 :8) {
^entry (%_asignaturaInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :61 :45)
cbde.store %_asignaturaInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :61 :45)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :63 :29) // new Asignaturas             {                 Codigo = asignaturaInput.Codigo,                 Nombre = asignaturaInput.Nombre,                 Horario = asignaturaInput.Horario             } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :65 :25) // Not a variable of known type: asignaturaInput
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :65 :25) // asignaturaInput.Codigo (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :66 :25) // Not a variable of known type: asignaturaInput
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :66 :25) // asignaturaInput.Nombre (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :67 :26) // Not a variable of known type: asignaturaInput
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :67 :26) // asignaturaInput.Horario (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :69 :19) // Not a variable of known type: asignatura
return %9 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\AsignaturasController.cs" :69 :12)

^1: // ExitBlock
cbde.unreachable

}
