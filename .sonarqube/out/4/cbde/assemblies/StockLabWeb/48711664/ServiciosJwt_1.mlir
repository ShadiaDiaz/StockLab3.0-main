func @_StockLabWeb.Servicios.ServiciosJwt.GenerarToken$Entity.Usuario$(none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :27 :8) {
^entry (%_usuario : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :27 :45)
cbde.store %_usuario, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :27 :45)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :29 :15) // Not a variable of known type: usuario
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :29 :26) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :29 :15) // comparison of unknown type: usuario == null
cond_br %3, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :29 :15)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :30 :23) // null (NullLiteralExpression)
return %4 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :30 :16)

^2: // JumpBlock
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :32 :55) // Not a variable of known type: usuario
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :32 :34) // new UsuarioViewModel(usuario)             {                 Usuario = usuario.User,                 Tipo = usuario.Tipo             } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :34 :26) // Not a variable of known type: usuario
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :34 :26) // usuario.User (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :35 :23) // Not a variable of known type: usuario
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :35 :23) // usuario.Tipo (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :39 :31) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
// Entity from another assembly: Encoding
%14 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :40 :22) // Encoding.ASCII (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :40 :46) // Not a variable of known type: _appSetting
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :40 :46) // _appSetting.Secret (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :40 :22) // Encoding.ASCII.GetBytes(_appSetting.Secret) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :42 :34) // new SecurityTokenDescriptor             {                 Subject = new ClaimsIdentity(new Claim[]                  {                     new Claim(ClaimTypes.Name, usuario.User.ToString()),                     new Claim(ClaimTypes.Role, "Rol1"),                     new Claim(ClaimTypes.Role, "Rol2"),                 }),                 Expires = DateTime.UtcNow.AddDays(7),                 SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)             } (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :44 :55) //  (OmittedArraySizeExpression)
%21 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :44 :49) // Claim[] (ArrayType)
%22 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :44 :45) // new Claim[]                  {                     new Claim(ClaimTypes.Name, usuario.User.ToString()),                     new Claim(ClaimTypes.Role, "Rol1"),                     new Claim(ClaimTypes.Role, "Rol2"),                 } (ArrayCreationExpression)
// Entity from another assembly: ClaimTypes
%23 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :46 :30) // ClaimTypes.Name (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :46 :47) // Not a variable of known type: usuario
%25 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :46 :47) // usuario.User (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :46 :47) // usuario.User.ToString() (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :46 :20) // new Claim(ClaimTypes.Name, usuario.User.ToString()) (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%28 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :47 :30) // ClaimTypes.Role (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :47 :47) // "Rol1" (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :47 :20) // new Claim(ClaimTypes.Role, "Rol1") (ObjectCreationExpression)
// Entity from another assembly: ClaimTypes
%31 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :48 :30) // ClaimTypes.Role (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :48 :47) // "Rol2" (StringLiteralExpression)
%33 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :48 :20) // new Claim(ClaimTypes.Role, "Rol2") (ObjectCreationExpression)
%34 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :44 :26) // new ClaimsIdentity(new Claim[]                  {                     new Claim(ClaimTypes.Name, usuario.User.ToString()),                     new Claim(ClaimTypes.Role, "Rol1"),                     new Claim(ClaimTypes.Role, "Rol2"),                 }) (ObjectCreationExpression)
// Entity from another assembly: DateTime
%35 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :50 :26) // DateTime.UtcNow (SimpleMemberAccessExpression)
%36 = constant 7 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :50 :50)
%37 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :50 :26) // DateTime.UtcNow.AddDays(7) (InvocationExpression)
%38 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :51 :85) // Not a variable of known type: key
%39 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :51 :60) // new SymmetricSecurityKey(key) (ObjectCreationExpression)
// Entity from another assembly: SecurityAlgorithms
%40 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :51 :91) // SecurityAlgorithms.HmacSha256Signature (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :51 :37) // new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature) (ObjectCreationExpression)
%43 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :54 :24) // Not a variable of known type: tokenHandler
%44 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :54 :49) // Not a variable of known type: tokenDescriptor
%45 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :54 :24) // tokenHandler.CreateToken(tokenDescriptor) (InvocationExpression)
%47 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :55 :12) // Not a variable of known type: usuarioResponse
%48 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :55 :12) // usuarioResponse.Token (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :55 :36) // Not a variable of known type: tokenHandler
%50 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :55 :60) // Not a variable of known type: token
%51 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :55 :36) // tokenHandler.WriteToken(token) (InvocationExpression)
%52 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :57 :19) // Not a variable of known type: usuarioResponse
return %52 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\StockLabWeb\\Servicios\\ServiciosJwt.cs" :57 :12)

^3: // ExitBlock
cbde.unreachable

}
