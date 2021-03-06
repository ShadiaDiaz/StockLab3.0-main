func @_Entity.Solicitud.FechaValidation.IsValid$object.System.ComponentModel.DataAnnotations.ValidationContext$(none, none) -> none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :60 :12) {
^entry (%_value : none, %_validationContext : none):
%0 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :60 :56)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :60 :56)
%1 = cbde.alloca none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :60 :70)
cbde.store %_validationContext, %1 : memref<none> loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :60 :70)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: DateTime
%2 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :62 :28) // DateTime.Now (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%4 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :64 :46) // Not a variable of known type: value
%5 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :64 :46) // value.ToString() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :64 :31) // DateTime.Parse(value.ToString()) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :64 :66) // Not a variable of known type: fecha
%8 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :64 :31) // Binary expression on unsupported types DateTime.Parse(value.ToString()) - fecha
%10 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :65 :27) // Not a variable of known type: ts
%11 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :65 :27) // ts.TotalDays (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :66 :19) // Not a variable of known type: days
%14 = constant 8 : i32 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :66 :26)
%15 = cbde.unknown : i1  loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :66 :19) // comparison of unknown type: days < 8
cond_br %15, ^1, ^2 loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :66 :19)

^1: // JumpBlock
%16 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :67 :48) // Identifier from another assembly: ErrorMessage
%17 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :67 :27) // new ValidationResult(ErrorMessage) (ObjectCreationExpression)
return %17 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :67 :20)

^2: // JumpBlock
// Entity from another assembly: ValidationResult
%18 = cbde.unknown : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :70 :27) // ValidationResult.Success (SimpleMemberAccessExpression)
return %18 : none loc("C:\\Users\\norma\\Desktop\\StockLab3.0-main-main\\Entity\\Solicitud.cs" :70 :20)

^3: // ExitBlock
cbde.unreachable

}
