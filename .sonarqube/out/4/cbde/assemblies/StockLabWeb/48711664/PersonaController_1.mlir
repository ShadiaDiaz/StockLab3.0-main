func @_StockLabWeb.Controllers.PersonaController.Post$StockLabWeb.Models.PersonaInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :22 :8) {
^entry (%_personaInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :23 :51)
cbde.store %_personaInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :23 :51)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :25 :12) // Not a variable of known type: personaInput
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :25 :12) // personaInput.Usuario (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :25 :12) // personaInput.Usuario.User (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :25 :39) // Not a variable of known type: personaInput
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :25 :39) // personaInput.Correo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapearPersona
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :26 :44) // Not a variable of known type: personaInput
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :26 :30) // MapearPersona(personaInput) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :27 :27) // Not a variable of known type: _service
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :27 :51) // Not a variable of known type: persona
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :27 :27) // _service.GuardarPersona(persona) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :28 :16) // Not a variable of known type: response
%14 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :28 :16) // response.Error (SimpleMemberAccessExpression)
cond_br %14, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :28 :16)

^1: // BinaryBranchBlock
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :30 :16) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :30 :41) // "Error al guardar persona" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :30 :69) // Not a variable of known type: response
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :30 :69) // response.Mensaje (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :30 :16) // ModelState.AddModelError("Error al guardar persona", response.Mensaje) (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :31 :69) // Identifier from another assembly: ModelState
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :31 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :32 :20) // Not a variable of known type: response
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :32 :20) // response.Mensaje (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :32 :40) // "Duplicado" (StringLiteralExpression)
%26 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :32 :20) // comparison of unknown type: response.Mensaje == "Duplicado"
cond_br %26, ^3, ^4 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :32 :20)

^3: // SimpleBlock
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :34 :20) // Not a variable of known type: detallesproblemas
%28 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :34 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%29 = constant 400 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :34 :47)
br ^5

^4: // SimpleBlock
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :38 :20) // Not a variable of known type: detallesproblemas
%31 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :38 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%32 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :38 :47)
br ^5

^5: // JumpBlock
// Entity from another assembly: BadRequest
%33 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :40 :34) // Not a variable of known type: detallesproblemas
%34 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :40 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %34 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :40 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%35 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :42 :22) // Not a variable of known type: response
%36 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :42 :22) // response.Persona (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :42 :19) // Ok(response.Persona) (InvocationExpression)
return %37 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :42 :12)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function Gets(), it contains poisonous unsupported syntaxes

func @_StockLabWeb.Controllers.PersonaController.Get$string$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :65 :8) {
^entry (%_identificacion : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :66 :50)
cbde.store %_identificacion, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :66 :50)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :68 :27) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :68 :50) // Not a variable of known type: identificacion
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :68 :27) // _service.BuscarPersona(identificacion) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :69 :15) // Not a variable of known type: response
%6 = cbde.unknown : i1 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :69 :15) // response.Error (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :69 :15)

^1: // BinaryBranchBlock
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :71 :16) // Identifier from another assembly: ModelState
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :71 :41) // "Error al consultar insumo" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :71 :70) // Not a variable of known type: response
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :71 :70) // response.Mensaje (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :71 :16) // ModelState.AddModelError("Error al consultar insumo", response.Mensaje) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :72 :69) // Identifier from another assembly: ModelState
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :72 :40) // new ValidationProblemDetails(ModelState) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :73 :19) // Not a variable of known type: response
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :73 :19) // response.Mensaje (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :73 :39) // "No existe" (StringLiteralExpression)
%18 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :73 :19) // comparison of unknown type: response.Mensaje == "No existe"
cond_br %18, ^3, ^4 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :73 :19)

^3: // SimpleBlock
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :75 :20) // Not a variable of known type: detallesproblemas
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :75 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%21 = constant 404 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :75 :47)
br ^5

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :79 :20) // Not a variable of known type: detallesproblemas
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :79 :20) // detallesproblemas.Status (SimpleMemberAccessExpression)
// Entity from another assembly: StatusCodes
%24 = constant 500 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :79 :47)
br ^5

^5: // JumpBlock
// Entity from another assembly: BadRequest
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :81 :34) // Not a variable of known type: detallesproblemas
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :81 :23) // BadRequest(detallesproblemas) (InvocationExpression)
return %26 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :81 :16)

^2: // JumpBlock
// Entity from another assembly: Ok
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :83 :43) // Not a variable of known type: response
%28 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :83 :43) // response.Persona (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :83 :22) // new PersonaViewModel(response.Persona) (ObjectCreationExpression)
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :83 :19) // Ok(new PersonaViewModel(response.Persona)) (InvocationExpression)
return %30 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :83 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_StockLabWeb.Controllers.PersonaController.MapearPersona$StockLabWeb.Models.PersonaInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :86 :8) {
^entry (%_personaInput : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :86 :38)
cbde.store %_personaInput, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :86 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :88 :26) // new Persona             {                 Identificacion = personaInput.Identificacion,                 Nombre = personaInput.Nombre,                 Apellidos = personaInput.Apellidos,                 Correo = personaInput.Correo,                 Edad = personaInput.Edad,                 Sexo = personaInput.Sexo,                 Usuario = personaInput.Usuario             } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :90 :33) // Not a variable of known type: personaInput
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :90 :33) // personaInput.Identificacion (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :91 :25) // Not a variable of known type: personaInput
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :91 :25) // personaInput.Nombre (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :92 :28) // Not a variable of known type: personaInput
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :92 :28) // personaInput.Apellidos (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :93 :25) // Not a variable of known type: personaInput
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :93 :25) // personaInput.Correo (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :94 :23) // Not a variable of known type: personaInput
%11 = cbde.unknown : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :94 :23) // personaInput.Edad (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :95 :23) // Not a variable of known type: personaInput
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :95 :23) // personaInput.Sexo (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :96 :26) // Not a variable of known type: personaInput
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :96 :26) // personaInput.Usuario (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :98 :19) // Not a variable of known type: persona
return %17 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\PersonaController.cs" :98 :12)

^1: // ExitBlock
cbde.unreachable

}
