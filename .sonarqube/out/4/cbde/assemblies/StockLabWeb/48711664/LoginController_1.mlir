func @_StockLabWeb.Controllers.LoginController.Login$StockLabWeb.Models.UsuarioInputModel$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :39 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :41 :34)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :41 :34)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :43 :23) // Not a variable of known type: _servicioUsuario
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :43 :55) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :43 :55) // model.Usuario (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :43 :70) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :43 :70) // model.Password (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :43 :23) // _servicioUsuario.ValidarUsuario(model.Usuario, model.Password) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :44 :16) // Not a variable of known type: user
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :44 :24) // null (NullLiteralExpression)
%10 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :44 :16) // comparison of unknown type: user == null
cond_br %10, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :44 :16)

^1: // JumpBlock
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :46 :16) // Identifier from another assembly: ModelState
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :46 :41) // "Acceso Denegado" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :46 :60) // "Usuario y/o contraseña incorrectos" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :46 :16) // ModelState.AddModelError("Acceso Denegado", "Usuario y/o contraseña incorrectos") (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :47 :66) // Identifier from another assembly: ModelState
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :47 :37) // new ValidationProblemDetails(ModelState)                 {                     Status = StatusCodes.Status401Unauthorized,                 } (ObjectCreationExpression)
// Entity from another assembly: StatusCodes
%17 = constant 401 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :49 :29)
// Entity from another assembly: Unauthorized
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :51 :36) // Not a variable of known type: problemDetails
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :51 :23) // Unauthorized(problemDetails) (InvocationExpression)
return %20 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :51 :16)

^2: // JumpBlock
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :53 :27) // Not a variable of known type: _servicioJwt
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :53 :53) // Not a variable of known type: user
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :53 :27) // _servicioJwt.GenerarToken(user) (InvocationExpression)
// Entity from another assembly: Ok
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :54 :22) // Not a variable of known type: response
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :54 :19) // Ok(response) (InvocationExpression)
return %26 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Controllers\\LoginController.cs" :54 :12)

^3: // ExitBlock
cbde.unreachable

}
