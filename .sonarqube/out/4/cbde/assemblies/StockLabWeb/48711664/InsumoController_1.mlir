func @_StockLabWeb.Controllers.InsumoController.Post$StockLabWeb.Models.InsumoInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :22 :8) {
^entry (%_insumoInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :23 :50)
cbde.store %_insumoInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :23 :50)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearInsumo
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :25 :41) // Not a variable of known type: insumoInput
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :25 :28) // MapearInsumo(insumoInput) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :26 :27) // Not a variable of known type: _service
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :26 :50) // Not a variable of known type: insumo
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :26 :27) // _service.GuardarInsumo(insumo) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :27 :15) // Not a variable of known type: response
%9 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :27 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :27 :15)

^1: // JumpBlock
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :29 :16) // Identifier from another assembly: ModelState
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :29 :41) // "Error al guardar insumo" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :29 :68) // Not a variable of known type: response
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :29 :68) // response.Mensaje (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :29 :16) // ModelState.AddModelError("Error al guardar insumo", response.Mensaje) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :30 :69) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :30 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :31 :16) // Not a variable of known type: detallesproblemas
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :31 :16) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%20 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :31 :43)
// Entity from another assembly: BadRequest
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :32 :34) // Not a variable of known type: detallesproblemas
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :32 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %22 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :32 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :34 :22) // Not a variable of known type: response
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :34 :22) // response.Insumo (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :34 :19) // Ok(response.Insumo) (InvocationExpression)
return %25 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :34 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function Get(), it contains poisonous unsupported syntaxes

func @_StockLabWeb.Controllers.InsumoController.Get$string$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :55 :8) {
^entry (%_numero : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :56 :49)
cbde.store %_numero, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :56 :49)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :58 :27) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :58 :49) // Not a variable of known type: numero
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :58 :27) // _service.BuscarInsumo(numero) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :60 :16) // Not a variable of known type: response
%6 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :60 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :60 :16)

^1: // BinaryBranchBlock
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :62 :16) // Identifier from another assembly: ModelState
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :62 :41) // "Error al Consutar las solicitudes" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :62 :78) // Not a variable of known type: response
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :62 :78) // response.Mensaje (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :62 :16) // ModelState.AddModelError("Error al Consutar las solicitudes", response.Mensaje) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :63 :69) // Identifier from another assembly: ModelState
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :63 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :65 :19) // Not a variable of known type: response
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :65 :19) // response.Estado (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :65 :38) // "No existe" (StringLiteralExpression)
%18 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :65 :19) // comparison of unknown type: response.Estado == "No existe"
cond_br %18, ^3, ^4 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :65 :19)

^3: // SimpleBlock
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :67 :20) // Not a variable of known type: detallesproblemas
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :67 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%21 = constant 404 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :67 :47)
br ^4

^4: // BinaryBranchBlock
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :69 :19) // Not a variable of known type: response
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :69 :19) // response.Estado (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :69 :38) // "Error" (StringLiteralExpression)
%25 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :69 :19) // comparison of unknown type: response.Estado == "Error"
cond_br %25, ^5, ^6 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :69 :19)

^5: // SimpleBlock
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :71 :20) // Not a variable of known type: detallesproblemas
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :71 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%28 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :71 :47)
br ^6

^6: // JumpBlock
// Entity from another assembly: BadRequest
%29 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :73 :34) // Not a variable of known type: detallesproblemas
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :73 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %30 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :73 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%31 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :75 :42) // Not a variable of known type: response
%32 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :75 :42) // response.Insumo (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :75 :22) // new InsumoViewModel(response.Insumo) (ObjectCreationExpression)
%34 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :75 :19) // Ok(new InsumoViewModel(response.Insumo)) (InvocationExpression)
return %34 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :75 :12)

^7: // ExitBlock
cbde.unreachable

}
func @_StockLabWeb.Controllers.InsumoController.Put$string$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :79 :8) {
^entry (%_numero : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :80 :40)
cbde.store %_numero, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :80 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :82 :32) // Not a variable of known type: numero
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :82 :45) // ';' (CharacterLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :82 :32) // numero.Split(';') (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :27) // Not a variable of known type: _service
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :61) // Not a variable of known type: solicitu
%7 = constant 0 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :70)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :61) // solicitu[0] (ElementAccessExpression)
%9 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :74) // int (PredefinedType)
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :84) // Not a variable of known type: solicitu
%11 = constant 1 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :93)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :84) // solicitu[1] (ElementAccessExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :74) // int.Parse(solicitu[1]) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :83 :27) // _service.ActualizarCantidadInsumo(solicitu[0], int.Parse(solicitu[1])) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :85 :15) // Not a variable of known type: response
%17 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :85 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %17, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :85 :15)

^1: // BinaryBranchBlock
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :87 :16) // Identifier from another assembly: ModelState
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :87 :41) // "Error al modificar la solicitud" (StringLiteralExpression)
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :87 :76) // Not a variable of known type: response
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :87 :76) // response.Mensaje (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :87 :16) // ModelState.AddModelError("Error al modificar la solicitud", response.Mensaje) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :88 :69) // Identifier from another assembly: ModelState
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :88 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :90 :19) // Not a variable of known type: response
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :90 :19) // response.Estado (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :90 :38) // "No existe" (StringLiteralExpression)
%29 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :90 :19) // comparison of unknown type: response.Estado == "No existe"
cond_br %29, ^3, ^4 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :90 :19)

^3: // SimpleBlock
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :92 :20) // Not a variable of known type: detallesproblemas
%31 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :92 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%32 = constant 404 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :92 :47)
br ^4

^4: // BinaryBranchBlock
%33 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :94 :19) // Not a variable of known type: response
%34 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :94 :19) // response.Estado (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :94 :38) // "Error Aplicacion" (StringLiteralExpression)
%36 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :94 :19) // comparison of unknown type: response.Estado == "Error Aplicacion"
cond_br %36, ^5, ^6 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :94 :19)

^5: // SimpleBlock
%37 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :96 :20) // Not a variable of known type: detallesproblemas
%38 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :96 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%39 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :96 :47)
br ^6

^6: // JumpBlock
// Entity from another assembly: BadRequest
%40 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :98 :34) // Not a variable of known type: detallesproblemas
%41 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :98 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %41 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :98 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%42 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :100 :22) // Not a variable of known type: response
%43 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :100 :22) // response.Insumo (SimpleMemberAccessExpression)
%44 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :100 :19) // Ok(response.Insumo) (InvocationExpression)
return %44 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :100 :12)

^7: // ExitBlock
cbde.unreachable

}
func @_StockLabWeb.Controllers.InsumoController.MapearInsumo$StockLabWeb.Models.InsumoInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :105 :8) {
^entry (%_insumoInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :105 :36)
cbde.store %_insumoInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :105 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :107 :25) // new Insumo             {                 Item = insumoInput.Item,                 Descripcion = insumoInput.Descripcion,                 Marca = insumoInput.Marca,                 Cantidad = insumoInput.Cantidad,                 StockMinimo = insumoInput.StockMinimo             } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :109 :23) // Not a variable of known type: insumoInput
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :109 :23) // insumoInput.Item (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :110 :30) // Not a variable of known type: insumoInput
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :110 :30) // insumoInput.Descripcion (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :111 :24) // Not a variable of known type: insumoInput
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :111 :24) // insumoInput.Marca (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :112 :27) // Not a variable of known type: insumoInput
%9 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :112 :27) // insumoInput.Cantidad (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :113 :30) // Not a variable of known type: insumoInput
%11 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :113 :30) // insumoInput.StockMinimo (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :115 :19) // Not a variable of known type: insumo
return %13 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\InsumoController.cs" :115 :12)

^1: // ExitBlock
cbde.unreachable

}
