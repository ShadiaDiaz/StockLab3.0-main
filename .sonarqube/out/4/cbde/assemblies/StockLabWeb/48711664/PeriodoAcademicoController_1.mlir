func @_StockLabWeb.Controllers.PeriodoAcademicoController.Post$StockLabWeb.Models.PeriodoAcademicoInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :24 :8) {
^entry (%_periodoAcademicoInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :25 :60)
cbde.store %_periodoAcademicoInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :25 :60)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearPeriodo
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :27 :53) // Not a variable of known type: periodoAcademicoInput
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :27 :39) // MapearPeriodo(periodoAcademicoInput) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :28 :27) // Not a variable of known type: _service
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :28 :51) // Not a variable of known type: periodo
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :28 :27) // _service.GuardarPeriodo(periodo) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :29 :15) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :29 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :29 :15)

^1: // JumpBlock
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :31 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :31 :41) // "Error al guardar Periodo" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :31 :69) // Not a variable of known type: response
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :31 :69) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :31 :16) // ModelState.AddModelError("Error al guardar Periodo", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :32 :69) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :32 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :33 :16) // Not a variable of known type: detallesproblemas
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :33 :16) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%20 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :33 :43)
// Entity from another assembly: BadRequest
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :34 :34) // Not a variable of known type: detallesproblemas
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :34 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %22 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :34 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :36 :22) // Not a variable of known type: response
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :36 :22) // response.PeriodoAcademico (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :36 :19) // Ok(response.PeriodoAcademico) (InvocationExpression)
return %25 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :36 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_StockLabWeb.Controllers.PeriodoAcademicoController.MapearPeriodo$StockLabWeb.Models.PeriodoAcademicoInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :40 :8) {
^entry (%_periodoAcademicoInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :40 :47)
cbde.store %_periodoAcademicoInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :40 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :42 :26) // new PeriodoAcademico             {                 Periodo = periodoAcademicoInput.Periodo,                 Corte = int.Parse(periodoAcademicoInput.Corte)             } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :44 :26) // Not a variable of known type: periodoAcademicoInput
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :44 :26) // periodoAcademicoInput.Periodo (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :45 :24) // int (PredefinedType)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :45 :34) // Not a variable of known type: periodoAcademicoInput
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :45 :34) // periodoAcademicoInput.Corte (SimpleMemberAccessExpression)
%7 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :45 :24) // int.Parse(periodoAcademicoInput.Corte) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :48 :19) // Not a variable of known type: periodo
return %9 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PeriodoAcademicoController.cs" :48 :12)

^1: // ExitBlock
cbde.unreachable

}
