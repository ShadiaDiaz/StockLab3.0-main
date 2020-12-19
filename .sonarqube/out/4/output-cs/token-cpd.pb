±
MC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Config\AppSetting.cs
	namespace 	
StockLabWeb
 
. 
Config 
{ 
public 

class 

AppSetting 
{ 
public 
string 
Secret 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˙
VC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Config\AuthOperationFilter.cs
	namespace 	
StockLabWeb
 
. 
Config 
{ 
public		 

class		 
AuthOperationFilter		 $
:		% &
IOperationFilter		' 7
{

 
public 
void 
Apply 
( 
OpenApiOperation *
	operation+ 4
,4 5"
OperationFilterContext6 L
contextM T
)T U
{ 	
var 
isAuthorized 
= 
context &
.& '

MethodInfo' 1
.1 2
DeclaringType2 ?
.? @
GetCustomAttributes@ S
(S T
trueT X
)X Y
.Y Z
OfTypeZ `
<` a
AuthorizeAttributea s
>s t
(t u
)u v
.v w
Anyw z
(z {
){ |
||} 
context %
.% &

MethodInfo& 0
.0 1
GetCustomAttributes1 D
(D E
trueE I
)I J
.J K
OfTypeK Q
<Q R
AuthorizeAttributeR d
>d e
(e f
)f g
.g h
Anyh k
(k l
)l m
;m n
if 
( 
! 
isAuthorized 
) 
return %
;% &
	operation 
. 
	Responses 
.  
TryAdd  &
(& '
$str' ,
,, -
new. 1
OpenApiResponse2 A
{B C
DescriptionD O
=P Q
$strR `
}a b
)b c
;c d
	operation 
. 
	Responses 
.  
TryAdd  &
(& '
$str' ,
,, -
new. 1
OpenApiResponse2 A
{B C
DescriptionD O
=P Q
$strR ]
}^ _
)_ `
;` a
var 
jwtbearerScheme 
=  !
new" %!
OpenApiSecurityScheme& ;
{ 
	Reference 
= 
new 
OpenApiReference  0
{1 2
Type3 7
=8 9
ReferenceType: G
.G H
SecuritySchemeH V
,V W
IdX Z
=[ \
$str] e
}f g
} 
; 
	operation 
. 
Security 
=  
new! $
List% )
<) *&
OpenApiSecurityRequirement* D
>D E
{ 
new &
OpenApiSecurityRequirement 2
{ 
[ 
jwtbearerScheme )
]* +
=, -
new. 1
string2 8
[9 :
]: ;
{< =
}> ?
}   
}!! 
;!! 
}"" 	
}## 
}$$ π 
bC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\AprobarSolicitudController.cs
	namespace 	
StockLabWeb
 
. 
Controllers !
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class &
AprobarSolicitudController +
:, -
ControllerBase. <
{ 
private 
readonly 
SolicitudService )
_service* 2
;2 3
private 
readonly 
IHubContext $
<$ %
	SignalHub% .
>. /
_hubContext0 ;
;; <
public &
AprobarSolicitudController )
() *
StockLabContext* 9
context: A
,A B
IHubContextC N
<N O
	SignalHubO X
>X Y

hubContextZ d
)d e
{ 	
_service 
= 
new 
SolicitudService +
(+ ,
context, 3
)3 4
;4 5
_hubContext 
= 

hubContext $
;$ %
} 	
[ 	
HttpPut	 
( 
$str 
) 
] 
public 
async 
Task 
< 
ActionResult &
<& '
string' -
>- .
>. /
Put0 3
(3 4
string4 :
numero; A
)A B
{   	
var!! 
response!! 
=!! 
_service!! #
.!!# $
AprobarSolicitud!!$ 4
(!!4 5
numero!!5 ;
)!!; <
;!!< =
if## 
(## 
response## 
.## 
Error## 
)## 
{$$ 

ModelState%% 
.%% 
AddModelError%% (
(%%( )
$str%%) J
,%%J K
response%%L T
.%%T U
Mensaje%%U \
)%%\ ]
;%%] ^
var&& 
detallesproblemas&& %
=&&& '
new&&( +$
ValidationProblemDetails&&, D
(&&D E

ModelState&&E O
)&&O P
;&&P Q
if(( 
((( 
response(( 
.(( 
Estado(( "
==((# %
$str((& 1
)((1 2
{)) 
detallesproblemas** %
.**% &
Status**& ,
=**- .
StatusCodes**/ :
.**: ;
Status404NotFound**; L
;**L M
}++ 
if,, 
(,, 
response,, 
.,, 
Estado,, "
==,,# %
$str,,& 4
),,4 5
{-- 
detallesproblemas.. %
...% &
Status..& ,
=..- .
StatusCodes../ :
...: ;
Status404NotFound..; L
;..L M
}// 
if00 
(00 
response00 
.00 
Estado00 "
==00# %
$str00& 8
)008 9
{11 
detallesproblemas22 %
.22% &
Status22& ,
=22- .
StatusCodes22/ :
.22: ;(
Status500InternalServerError22; W
;22W X
}33 
return44 

BadRequest44 !
(44! "
detallesproblemas44" 3
)443 4
;444 5
}55 
var66 
solicitudview66 
=66 
new66  #
SolicitudViewModel66$ 6
(667 8
response668 @
.66@ A
	Solicitud66A J
)66J K
;66K L
await77 
_hubContext77 
.77 
Clients77 %
.77% &
All77& )
.77) *
	SendAsync77* 3
(773 4
$str774 I
,77I J
solicitudview77K X
)77X Y
;77Y Z
return88 
Ok88 
(88 
solicitudview88 $
)88$ %
;88% &
}99 	
}:: 
};; ˇ%
]C:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\AsignaturasController.cs
	namespace 	
StockLabWeb
 
. 
Controllers !
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class !
AsignaturasController &
:' (
ControllerBase) 7
{ 
private 
readonly 
AsignaturaService *
_service+ 3
;3 4
public !
AsignaturasController $
($ %
StockLabContext% 4
context5 <
)< =
{ 	
_service 
= 
new 
AsignaturaService ,
(, -
context- 4
)4 5
;5 6
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
AsignaturaViewModel /
>/ 0
Post1 5
(5 6 
AsignaturaInputModel6 J
asignaturaInputK Z
)Z [
{ 	
Asignaturas 

asignatura "
=# $
MapearAsignatura% 5
(5 6
asignaturaInput6 E
)E F
;F G
var 
response 
= 
_service #
.# $
GuardarAsignatura$ 5
(5 6

asignatura6 @
)@ A
;A B
if 
( 
response 
. 
Error 
) 
{ 

ModelState   
.   
AddModelError   (
(  ( )
$str  ) F
,  F G
response  H P
.  P Q
Mensaje  Q X
)  X Y
;  Y Z
var!! 
detallesproblemas!! %
=!!& '
new!!( +$
ValidationProblemDetails!!, D
(!!D E

ModelState!!E O
)!!O P
;!!P Q
if"" 
("" 
response"" 
."" 
Estado"" 
==""  "
$str""# .
)"". /
{## 
detallesproblemas$$ !
.$$! "
Status$$" (
=$$) *
StatusCodes$$+ 6
.$$6 7
Status400BadRequest$$7 J
;$$J K
}%% 
if&& 
(&& 
response&& 
.&& 
Estado&& 
==&& !
$str&&" )
)&&) *
{'' 
detallesproblemas(( !
.((! "
Status((" (
=(() *
StatusCodes((+ 6
.((6 7(
Status500InternalServerError((7 S
;((S T
})) 
return** 

BadRequest** !
(**! "
detallesproblemas**" 3
)**3 4
;**4 5
}++ 
return,, 
Ok,, 
(,, 
response,, 
.,, 

Asignatura,, )
),,) *
;,,* +
}-- 	
[00 	
HttpGet00	 
]00 
public11 
ActionResult11 
<11 
AsignaturaViewModel11 /
>11/ 0
Get111 4
(114 5
)115 6
{22 	
var33 
response33 
=33 
_service33 #
.33# $ 
ConsultarAsignaturas33$ 8
(338 9
)339 :
;33: ;
if55 
(55 
response55 
.55 
Error55 
)55 
{66 
return77 

BadRequest77 !
(77! "
response77" *
.77* +
Mensaje77+ 2
)772 3
;773 4
}88 
return99 
Ok99 
(99 
response99 
.99 
Asignaturas99 *
.99* +
Select99+ 1
(991 2
a992 3
=>994 6
new997 :
AsignaturaViewModel99; N
(99N O
a99O P
)99P Q
)99Q R
)99R S
;99S T
}:: 	
private>> 
Asignaturas>> 
MapearAsignatura>> ,
(>>, - 
AsignaturaInputModel>>- A
asignaturaInput>>B Q
)>>Q R
{?? 	
var@@ 

asignatura@@ 
=@@ 
new@@  
Asignaturas@@! ,
{AA 
CodigoBB 
=BB 
asignaturaInputBB (
.BB( )
CodigoBB) /
,BB/ 0
NombreCC 
=CC 
asignaturaInputCC (
.CC( )
NombreCC) /
,CC/ 0
HorarioDD 
=DD 
asignaturaInputDD )
.DD) *
HorarioDD* 1
}EE 
;EE 
returnFF 

asignaturaFF 
;FF 
}GG 	
}HH 
}II ‡I
XC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\InsumoController.cs
	namespace

 	
StockLabWeb


 
.

 
Controllers

 !
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
InsumoController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
InsumoService &
_service' /
;/ 0
public 
InsumoController 
(  
StockLabContext  /
context0 7
)7 8
{ 	
_service 
= 
new 
InsumoService (
(( )
context) 0
)0 1
;1 2
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
InsumoViewModel +
>+ ,
Post- 1
(1 2
InsumoInputModel2 B
insumoInputC N
)N O
{ 	
Insumo 
insumo 
= 
MapearInsumo (
(( )
insumoInput) 4
)4 5
;5 6
var 
response 
= 
_service #
.# $
GuardarInsumo$ 1
(1 2
insumo2 8
)8 9
;9 :
if 
( 
response 
. 
Error 
) 
{ 

ModelState 
. 
AddModelError (
(( )
$str) B
,B C
responseD L
.L M
MensajeM T
)T U
;U V
var 
detallesproblemas %
=& '
new( +$
ValidationProblemDetails, D
(D E

ModelStateE O
)O P
;P Q
detallesproblemas   !
.  ! "
Status  " (
=  ) *
StatusCodes  + 6
.  6 7(
Status500InternalServerError  7 S
;  S T
return!! 

BadRequest!! !
(!!! "
detallesproblemas!!" 3
)!!3 4
;!!4 5
}"" 
return## 
Ok## 
(## 
response## 
.## 
Insumo## %
)##% &
;##& '
}$$ 	
['' 	
HttpGet''	 
]'' 
public(( 
ActionResult(( 
<(( 
AsignaturaViewModel(( /
>((/ 0
Get((1 4
(((4 5
)((5 6
{)) 	
var** 
response** 
=** 
_service** #
.**# $
ConsultarInsumos**$ 4
(**4 5
)**5 6
;**6 7
if,, 
(,, 
response,, 
.,, 
Error,, 
),, 
{-- 

ModelState.. 
... 
AddModelError.. (
(..( )
$str..) D
,..D E
response..F N
...N O
Mensaje..O V
)..V W
;..W X
var// 
detallesproblemas// %
=//& '
new//( +$
ValidationProblemDetails//, D
(//D E

ModelState//E O
)//O P
;//P Q
detallesproblemas00 !
.00! "
Status00" (
=00) *
StatusCodes00+ 6
.006 7(
Status500InternalServerError007 S
;00S T
return11 

BadRequest11 !
(11! "
detallesproblemas11" 3
)113 4
;114 5
}22 
return33 
Ok33 
(33 
response33 
.33 
Insumos33 &
.33& '
Select33' -
(33- .
a33. /
=>330 2
new333 6
InsumoViewModel337 F
(33F G
a33G H
)33H I
)33I J
)33J K
;33K L
}44 	
[88 	
HttpGet88	 
(88 
$str88 
)88 
]88 
public99 
ActionResult99 
<99 
InsumoViewModel99 +
>99+ ,
Get99- 0
(990 1
string991 7
numero998 >
)99> ?
{:: 	
var;; 
response;; 
=;; 
_service;; #
.;;# $
BuscarInsumo;;$ 0
(;;0 1
numero;;1 7
);;7 8
;;;8 9
if== 
(== 
response== 
.== 
Error== 
)== 
{>> 

ModelState?? 
.?? 
AddModelError?? (
(??( )
$str??) L
,??L M
response??N V
.??V W
Mensaje??W ^
)??^ _
;??_ `
var@@ 
detallesproblemas@@ %
=@@& '
new@@( +$
ValidationProblemDetails@@, D
(@@D E

ModelState@@E O
)@@O P
;@@P Q
ifBB 
(BB 
responseBB 
.BB 
EstadoBB "
==BB# %
$strBB& 1
)BB1 2
{CC 
detallesproblemasDD %
.DD% &
StatusDD& ,
=DD- .
StatusCodesDD/ :
.DD: ;
Status404NotFoundDD; L
;DDL M
}EE 
ifFF 
(FF 
responseFF 
.FF 
EstadoFF "
==FF# %
$strFF& -
)FF- .
{GG 
detallesproblemasHH %
.HH% &
StatusHH& ,
=HH- .
StatusCodesHH/ :
.HH: ;(
Status500InternalServerErrorHH; W
;HHW X
}II 
returnJJ 

BadRequestJJ !
(JJ! "
detallesproblemasJJ" 3
)JJ3 4
;JJ4 5
}KK 
returnLL 
OkLL 
(LL 
newLL 
InsumoViewModelLL )
(LL) *
responseLL* 2
.LL2 3
InsumoLL3 9
)LL9 :
)LL: ;
;LL; <
}MM 	
[PP 	
HttpPutPP	 
(PP 
$strPP 
)PP 
]PP 
publicQQ 
ActionResultQQ 
<QQ 
stringQQ "
>QQ" #
PutQQ$ '
(QQ' (
stringQQ( .
numeroQQ/ 5
)QQ5 6
{RR 	
stringSS 
[SS 
]SS 
solicituSS 
=SS 
numeroSS  &
.SS& '
SplitSS' ,
(SS, -
$charSS- 0
)SS0 1
;SS1 2
varTT 
responseTT 
=TT 
_serviceTT #
.TT# $$
ActualizarCantidadInsumoTT$ <
(TT< =
solicituTT= E
[TTE F
$numTTF G
]TTG H
,TTH I
intTTJ M
.TTM N
ParseTTN S
(TTS T
solicituTTT \
[TT\ ]
$numTT] ^
]TT^ _
)TT_ `
)TT` a
;TTa b
ifVV 
(VV 
responseVV 
.VV 
ErrorVV 
)VV 
{WW 

ModelStateXX 
.XX 
AddModelErrorXX (
(XX( )
$strXX) J
,XXJ K
responseXXL T
.XXT U
MensajeXXU \
)XX\ ]
;XX] ^
varYY 
detallesproblemasYY %
=YY& '
newYY( +$
ValidationProblemDetailsYY, D
(YYD E

ModelStateYYE O
)YYO P
;YYP Q
if[[ 
([[ 
response[[ 
.[[ 
Estado[[ "
==[[# %
$str[[& 1
)[[1 2
{\\ 
detallesproblemas]] %
.]]% &
Status]]& ,
=]]- .
StatusCodes]]/ :
.]]: ;
Status404NotFound]]; L
;]]L M
}^^ 
if__ 
(__ 
response__ 
.__ 
Estado__ "
==__# %
$str__& 8
)__8 9
{`` 
detallesproblemasaa %
.aa% &
Statusaa& ,
=aa- .
StatusCodesaa/ :
.aa: ;(
Status500InternalServerErroraa; W
;aaW X
}bb 
returncc 

BadRequestcc !
(cc! "
detallesproblemascc" 3
)cc3 4
;cc4 5
}dd 
returnee 
Okee 
(ee 
responseee 
.ee 
Insumoee %
)ee% &
;ee& '
}ff 	
privatejj 
Insumojj 
MapearInsumojj #
(jj# $
InsumoInputModeljj$ 4
insumoInputjj5 @
)jj@ A
{kk 	
varll 
insumoll 
=ll 
newll 
Insumoll #
{mm 
Itemnn 
=nn 
insumoInputnn "
.nn" #
Itemnn# '
,nn' (
Descripcionoo 
=oo 
insumoInputoo )
.oo) *
Descripcionoo* 5
,oo5 6
Marcapp 
=pp 
insumoInputpp #
.pp# $
Marcapp$ )
,pp) *
Cantidadqq 
=qq 
insumoInputqq &
.qq& '
Cantidadqq' /
,qq/ 0
StockMinimorr 
=rr 
insumoInputrr )
.rr) *
StockMinimorr* 5
}ss 
;ss 
returntt 
insumott 
;tt 
}uu 	
}vv 
}ww ç 
WC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\LoginController.cs
	namespace 	
StockLabWeb
 
. 
Controllers !
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
LoginController  
:! "
ControllerBase# 1
{ 
private 
ServiciosJwt 
_servicioJwt )
;) *
private 
LoginService 
_servicioUsuario -
;- .
private 
readonly 
StockLabContext (
_context) 1
;1 2
public 
LoginController 
( 
StockLabContext .
context/ 6
,6 7
IOptions8 @
<@ A

AppSettingA K
>K L
appSettingsM X
)X Y
{ 	
_context 
= 
context 
; 
var 
admin 
= 
_context  
.  !
Usuarios! )
.) *
Find* .
(. /
$str/ 6
)6 7
;7 8
if 
( 
admin 
== 
null 
) 
{   
_context!! 
.!! 
Usuarios!! !
.!!! "
Add!!" %
(!!% &
new!!& )
Entity!!* 0
.!!0 1
Usuario!!1 8
(!!8 9
)!!9 :
{!!; <
User!!= A
=!!B C
$str!!D K
,!!K L
Tipo!!M Q
=!!R S
$str!!T c
,!!c d
Password!!e m
=!!n o
$str!!p z
,!!z {
Estado	!!| Ç
=
!!É Ñ
$str
!!Ö ç
}
!!ç é
)
!!é è
;
!!è ê
var"" 
i"" 
="" 
_context""  
.""  !
SaveChanges""! ,
("", -
)""- .
;"". /
}## 
_servicioJwt$$ 
=$$ 
new$$ 
ServiciosJwt$$ +
($$+ ,
appSettings$$, 7
)$$7 8
;$$8 9
_servicioUsuario%% 
=%% 
new%% "
LoginService%%# /
(%%/ 0
context%%0 7
)%%7 8
;%%8 9
}&& 	
[(( 	
AllowAnonymous((	 
](( 
[)) 	
HttpPost))	 
()) 
))) 
])) 
public** 
ActionResult** 
Login** !
(**! "
UsuarioInputModel**" 3
model**4 9
)**9 :
{++ 	
var,, 
user,, 
=,, 
_servicioUsuario,, '
.,,' (
ValidarUsuario,,( 6
(,,6 7
model,,7 <
.,,< =
Usuario,,= D
,,,D E
model,,F K
.,,K L
Password,,L T
),,T U
;,,U V
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 

ModelState// 
.// 
AddModelError// (
(//( )
$str//) :
,//: ;
$str//< `
)//` a
;//a b
var00 
problemDetails00 "
=00# $
new00% ($
ValidationProblemDetails00) A
(00A B

ModelState00B L
)00L M
{11 
Status22 
=22 
StatusCodes22 (
.22( )!
Status401Unauthorized22) >
,22> ?
}33 
;33 
return44 
Unauthorized44 #
(44# $
problemDetails44$ 2
)442 3
;443 4
}55 
var66 
response66 
=66 
_servicioJwt66 '
.66' (
GenerarToken66( 4
(664 5
user665 9
)669 :
;66: ;
return77 
Ok77 
(77 
response77 
)77 
;77  
}88 	
}== 
}>> ¥
bC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\PeriodoAcademicoController.cs
	namespace

 	
StockLabWeb


 
.

 
Controllers

 !
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class &
PeriodoAcademicoController +
:, -
ControllerBase. <
{ 
private 
readonly #
PeriodoAcademicoService 0
_service1 9
;9 :
public &
PeriodoAcademicoController )
() *
StockLabContext* 9
context: A
)A B
{ 	
_service 
= 
new #
PeriodoAcademicoService 2
(2 3
context3 :
): ;
;; <
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< %
PeriodoAcademicoViewModel 5
>5 6
Post7 ;
(; <&
PeriodoAcademicoInputModel< V!
periodoAcademicoInputW l
)l m
{ 	
PeriodoAcademico 
periodo $
=% &
MapearPeriodo' 4
(4 5!
periodoAcademicoInput5 J
)J K
;K L
var 
response 
= 
_service #
.# $
GuardarPeriodo$ 2
(2 3
periodo3 :
): ;
;; <
if 
( 
response 
. 
Error 
) 
{ 

ModelState   
.   
AddModelError   (
(  ( )
$str  ) C
,  C D
response  E M
.  M N
Mensaje  N U
)  U V
;  V W
var!! 
detallesproblemas!! %
=!!& '
new!!( +$
ValidationProblemDetails!!, D
(!!D E

ModelState!!E O
)!!O P
;!!P Q
detallesproblemas"" !
.""! "
Status""" (
="") *
StatusCodes""+ 6
.""6 7(
Status500InternalServerError""7 S
;""S T
return## 

BadRequest## !
(##! "
detallesproblemas##" 3
)##3 4
;##4 5
}$$ 
return%% 
Ok%% 
(%% 
response%% 
.%% 
PeriodoAcademico%% /
)%%/ 0
;%%0 1
}&& 	
private)) 
PeriodoAcademico))  
MapearPeriodo))! .
()). /&
PeriodoAcademicoInputModel))/ I!
periodoAcademicoInput))J _
)))_ `
{** 	
var++ 
periodo++ 
=++ 
new++ 
PeriodoAcademico++ .
{,, 
Periodo-- 
=-- !
periodoAcademicoInput-- /
.--/ 0
Periodo--0 7
,--7 8
Corte.. 
=.. 
int.. 
... 
Parse.. !
(..! "!
periodoAcademicoInput.." 7
...7 8
Corte..8 =
)..= >
}// 
;// 
return11 
periodo11 
;11 
}22 	
}33 
}44 ·<
YC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\PersonaController.cs
	namespace

 	
StockLabWeb


 
.

 
Controllers

 !
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
PersonaController "
:# $
ControllerBase% 3
{ 
private 
readonly 
PersonaService '
_service( 0
;0 1
public 
PersonaController  
(  !
StockLabContext! 0
context1 8
)8 9
{ 	
_service 
= 
new 
PersonaService )
() *
context* 1
)1 2
;2 3
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
PersonaViewModel ,
>, -
Post. 2
(2 3
PersonaInputModel3 D
personaInputE Q
)Q R
{ 	
personaInput 
. 
Usuario  
.  !
User! %
=% &
personaInput' 3
.3 4
Correo4 :
;: ;
Persona 
persona 
= 
MapearPersona +
(+ ,
personaInput, 8
)8 9
;9 :
var 
response 
= 
_service #
.# $
GuardarPersona$ 2
(2 3
persona3 :
): ;
;; <
if 
( 
response 
. 
Error 
) 
{ 

ModelState 
. 
AddModelError (
(( )
$str) C
,C D
responseE M
.M N
MensajeN U
)U V
;V W
var   
detallesproblemas   %
=  & '
new  ( +$
ValidationProblemDetails  , D
(  D E

ModelState  E O
)  O P
;  P Q
if!! 
(!! 
response!! 
.!! 
Mensaje!! $
==!!% '
$str!!( 3
)!!3 4
{"" 
detallesproblemas## %
.##% &
Status##& ,
=##- .
StatusCodes##/ :
.##: ;
Status400BadRequest##; N
;##N O
}$$ 
else%% 
{&& 
detallesproblemas'' %
.''% &
Status''& ,
=''- .
StatusCodes''/ :
.'': ;(
Status500InternalServerError''; W
;''W X
}(( 
return)) 

BadRequest)) !
())! "
detallesproblemas))" 3
)))3 4
;))4 5
}** 
return++ 
Ok++ 
(++ 
response++ 
.++ 
Persona++ &
)++& '
;++' (
},, 	
[// 	
HttpGet//	 
]// 
public00 
ActionResult00 
<00 
PersonaViewModel00 ,
>00, -
Gets00. 2
(002 3
)003 4
{11 	
var22 
response22 
=22 
_service22 #
.22# $
ConsultarMonitores22$ 6
(226 7
)227 8
;228 9
if44 
(44 
response44 
.44 
Error44 
)44 
{55 

ModelState66 
.66 
AddModelError66 (
(66( )
$str66) J
,66J K
response66L T
.66T U
Mensaje66U \
)66\ ]
;66] ^
var77 
detallesproblemas77 %
=77& '
new77( +$
ValidationProblemDetails77, D
(77D E

ModelState77E O
)77O P
;77P Q
detallesproblemas99 !
.99! "
Status99" (
=99) *
StatusCodes99+ 6
.996 7(
Status500InternalServerError997 S
;99S T
return:: 

BadRequest:: !
(::! "
detallesproblemas::" 3
)::3 4
;::4 5
};; 
return<< 
Ok<< 
(<< 
response<< 
.<< 
Personas<< '
.<<' (
Select<<( .
(<<. /
a<</ 0
=><<1 3
new<<4 7
PersonaViewModel<<8 H
(<<H I
a<<I J
)<<J K
)<<K L
)<<L M
;<<M N
}== 	
[BB 	
HttpGetBB	 
(BB 
$strBB #
)BB# $
]BB$ %
publicCC 
ActionResultCC 
<CC 
PersonaViewModelCC ,
>CC, -
GetCC. 1
(CC1 2
stringCC2 8
identificacionCC9 G
)CCG H
{DD 	
varEE 
responseEE 
=EE 
_serviceEE #
.EE# $
BuscarPersonaEE$ 1
(EE1 2
identificacionEE2 @
)EE@ A
;EEA B
ifFF 
(FF 
responseFF 
.FF 
ErrorFF 
)FF 
{GG 

ModelStateHH 
.HH 
AddModelErrorHH (
(HH( )
$strHH) D
,HHD E
responseHHF N
.HHN O
MensajeHHO V
)HHV W
;HHW X
varII 
detallesproblemasII %
=II& '
newII( +$
ValidationProblemDetailsII, D
(IID E

ModelStateIIE O
)IIO P
;IIP Q
ifJJ 
(JJ 
responseJJ 
.JJ 
MensajeJJ #
==JJ$ &
$strJJ' 2
)JJ2 3
{KK 
detallesproblemasLL %
.LL% &
StatusLL& ,
=LL- .
StatusCodesLL/ :
.LL: ;
Status404NotFoundLL; L
;LLL M
}MM 
elseNN 
{OO 
detallesproblemasPP %
.PP% &
StatusPP& ,
=PP- .
StatusCodesPP/ :
.PP: ;(
Status500InternalServerErrorPP; W
;PPW X
}QQ 
returnRR 

BadRequestRR !
(RR! "
detallesproblemasRR" 3
)RR3 4
;RR4 5
}SS 
returnTT 
OkTT 
(TT 
newTT 
PersonaViewModelTT *
(TT* +
responseTT+ 3
.TT3 4
PersonaTT4 ;
)TT; <
)TT< =
;TT= >
}UU 	
privateWW 
PersonaWW 
MapearPersonaWW %
(WW% &
PersonaInputModelWW& 7
personaInputWW8 D
)WWD E
{XX 	
varYY 
personaYY 
=YY 
newYY 
PersonaYY %
{ZZ 
Identificacion[[ 
=[[  
personaInput[[! -
.[[- .
Identificacion[[. <
,[[< =
Nombre\\ 
=\\ 
personaInput\\ %
.\\% &
Nombre\\& ,
,\\, -
	Apellidos]] 
=]] 
personaInput]] (
.]]( )
	Apellidos]]) 2
,]]2 3
Correo^^ 
=^^ 
personaInput^^ %
.^^% &
Correo^^& ,
,^^, -
Edad__ 
=__ 
personaInput__ #
.__# $
Edad__$ (
,__( )
Sexo`` 
=`` 
personaInput`` #
.``# $
Sexo``$ (
,``( )
Usuarioaa 
=aa 
personaInputaa &
.aa& '
Usuarioaa' .
}bb 
;bb 
returncc 
personacc 
;cc 
}dd 	
}ee 
}ff Ω[
[C:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\SolicitudController.cs
	namespace 	
StockLabWeb
 
. 
Controllers !
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
	Authorize 
] 
[ 
ApiController 
] 
public 

class 
SolicitudController $
:% &
ControllerBase' 5
{ 
private 
readonly 
SolicitudService )
_service* 2
;2 3
private 
readonly 
IHubContext $
<$ %
	SignalHub% .
>. /
_hubContext0 ;
;; <
public 
SolicitudController "
(" #
StockLabContext# 2
context3 :
,: ;
IHubContext< G
<G H
	SignalHubH Q
>Q R

hubContextS ]
)] ^
{ 	
_service 
= 
new 
SolicitudService +
(+ ,
context, 3
)3 4
;4 5
_hubContext 
= 

hubContext $
;$ %
} 	
[ 	
HttpPost	 
] 
public   
async   
Task   
<   
ActionResult   &
<  & '
SolicitudViewModel  ' 9
>  9 :
>  : ;
Post  < @
(  @ A
SolicitudInputModel  A T
solicitudInputModel  U h
)  h i
{!! 	
	Solicitud"" 
	solicitud"" 
=""  !
MapearSolicitud""" 1
(""1 2
solicitudInputModel""2 E
)""E F
;""F G
var## 
response## 
=## 
_service## #
.### $
GuardarSolicitud##$ 4
(##4 5
	solicitud##5 >
)##> ?
;##? @
if$$ 
($$ 
response$$ 
.$$ 
Error$$ 
)$$ 
{%% 

ModelState&& 
.&& 
AddModelError&& (
(&&( )
$str&&) H
,&&H I
response&&J R
.&&R S
Mensaje&&S Z
)&&Z [
;&&[ \
var'' 
detallesproblemas'' %
=''& '
new''( +$
ValidationProblemDetails'', D
(''D E

ModelState''E O
)''O P
;''P Q
if)) 
()) 
response)) 
.)) 
Mensaje)) #
==))$ &
$str))' >
)))> ?
{** 
detallesproblemas++ %
.++% &
Status++& ,
=++- .
StatusCodes++/ :
.++: ;
Status400BadRequest++; N
;++N O
},, 
else-- 
{.. 
detallesproblemas// %
.//% &
Status//& ,
=//- .
StatusCodes/// :
.//: ;(
Status500InternalServerError//; W
;//W X
}00 
return22 

BadRequest22 !
(22! "
detallesproblemas22" 3
)223 4
;224 5
}33 
var44 
solicitudview44 
=44 
new44  #
SolicitudViewModel44$ 6
(447 8
response448 @
.44@ A
	Solicitud44A J
)44J K
;44K L
await55 
_hubContext55 
.55 
Clients55 %
.55% &
All55& )
.55) *
	SendAsync55* 3
(553 4
$str554 I
,55I J
solicitudview55K X
)55X Y
;55Y Z
return66 
Ok66 
(66 
solicitudview66 $
)66$ %
;66% &
}77 	
[:: 	
HttpGet::	 
]:: 
public;; 
ActionResult;; 
<;; 
SolicitudViewModel;; .
>;;. /
Gets;;0 4
(;;4 5
);;5 6
{<< 	
var== 
response== 
=== 
_service== #
.==# $ 
ConsultarSolicitudes==$ 8
(==8 9
)==9 :
;==: ;
if?? 
(?? 
response?? 
.?? 
Error?? 
)?? 
{@@ 

ModelStateAA 
.AA 
AddModelErrorAA (
(AA( )
$strAA) L
,AAL M
responseAAN V
.AAV W
MensajeAAW ^
)AA^ _
;AA_ `
varBB 
detallesproblemasBB %
=BB& '
newBB( +$
ValidationProblemDetailsBB, D
(BBD E

ModelStateBBE O
)BBO P
;BBP Q
detallesproblemasDD !
.DD! "
StatusDD" (
=DD) *
StatusCodesDD+ 6
.DD6 7(
Status500InternalServerErrorDD7 S
;DDS T
returnEE 

BadRequestEE !
(EE! "
detallesproblemasEE" 3
)EE3 4
;EE4 5
}FF 
returnGG 
OkGG 
(GG 
responseGG 
.GG 
SolicitudesGG *
.GG* +
SelectGG+ 1
(GG1 2
aGG2 3
=>GG4 6
newGG7 :
SolicitudViewModelGG; M
(GGM N
aGGN O
)GGO P
)GGP Q
)GGQ R
;GGR S
}HH 	
[KK 	
HttpGetKK	 
(KK 
$strKK 
)KK 
]KK 
publicLL 
ActionResultLL 
<LL 
SolicitudViewModelLL .
>LL. /
GetLL0 3
(LL3 4
stringLL4 :
numeroLL; A
)LLA B
{MM 	
varNN 
responseNN 
=NN 
_serviceNN #
.NN# $
BuscarSolicitudNN$ 3
(NN3 4
numeroNN4 :
)NN: ;
;NN; <
ifPP 
(PP 
responsePP 
.PP 
ErrorPP 
)PP 
{QQ 

ModelStateRR 
.RR 
AddModelErrorRR (
(RR( )
$strRR) L
,RRL M
responseRRN V
.RRV W
MensajeRRW ^
)RR^ _
;RR_ `
varSS 
detallesproblemasSS %
=SS& '
newSS( +$
ValidationProblemDetailsSS, D
(SSD E

ModelStateSSE O
)SSO P
;SSP Q
ifUU 
(UU 
responseUU 
.UU 
MensajeUU #
==UU$ &
$strUU' 2
)UU2 3
{VV 
detallesproblemasWW %
.WW% &
StatusWW& ,
=WW- .
StatusCodesWW/ :
.WW: ;
Status404NotFoundWW; L
;WWL M
}XX 
elseYY 
{ZZ 
detallesproblemas[[ %
.[[% &
Status[[& ,
=[[- .
StatusCodes[[/ :
.[[: ;(
Status500InternalServerError[[; W
;[[W X
}\\ 
return]] 

BadRequest]] !
(]]! "
detallesproblemas]]" 3
)]]3 4
;]]4 5
}^^ 
return__ 
Ok__ 
(__ 
new__ 
SolicitudViewModel__ ,
(__, -
response__- 5
.__5 6
	Solicitud__6 ?
)__? @
)__@ A
;__A B
}`` 	
[cc 	
HttpPutcc	 
(cc 
$strcc 
)cc 
]cc 
publicdd 
asyncdd 
Taskdd 
<dd 
ActionResultdd &
<dd& '
stringdd' -
>dd- .
>dd. /
Putdd0 3
(dd3 4
stringdd4 :
numerodd; A
)ddA B
{ee 	
stringff 
[ff 
]ff 
solicituff 
=ff 
numeroff  &
.ff& '
Splitff' ,
(ff, -
$charff- 0
)ff0 1
;ff1 2
vargg 
responsegg 
=gg 
_servicegg #
.gg# $
ActualizarEstadogg$ 4
(gg4 5
solicitugg5 =
[gg= >
$numgg> ?
]gg? @
,gg@ A
solicituggB J
[ggJ K
$numggK L
]ggL M
)ggM N
;ggN O
ifii 
(ii 
responseii 
.ii 
Errorii 
)ii 
{jj 

ModelStatekk 
.kk 
AddModelErrorkk (
(kk( )
$strkk) J
,kkJ K
responsekkL T
.kkT U
MensajekkU \
)kk\ ]
;kk] ^
varll 
detallesproblemasll %
=ll& '
newll( +$
ValidationProblemDetailsll, D
(llD E

ModelStatellE O
)llO P
;llP Q
ifnn 
(nn 
responsenn 
.nn 
Estadonn "
==nn# %
$strnn& 1
)nn1 2
{oo 
detallesproblemaspp %
.pp% &
Statuspp& ,
=pp- .
StatusCodespp/ :
.pp: ;
Status404NotFoundpp; L
;ppL M
}qq 
ifrr 
(rr 
responserr 
.rr 
Estadorr "
==rr# %
$strrr& 8
)rr8 9
{ss 
detallesproblemastt %
.tt% &
Statustt& ,
=tt- .
StatusCodestt/ :
.tt: ;(
Status500InternalServerErrortt; W
;ttW X
}uu 
returnvv 

BadRequestvv !
(vv! "
detallesproblemasvv" 3
)vv3 4
;vv4 5
}ww 
varxx 
solicitudviewxx 
=xx 
newxx  #
SolicitudViewModelxx$ 6
(xx7 8
responsexx8 @
.xx@ A
	SolicitudxxA J
)xxJ K
;xxK L
awaityy 
_hubContextyy 
.yy 
Clientsyy %
.yy% &
Allyy& )
.yy) *
	SendAsyncyy* 3
(yy3 4
$stryy4 I
,yyI J
solicitudviewyyK X
)yyX Y
;yyY Z
returnzz 
Okzz 
(zz 
solicitudviewzz $
)zz$ %
;zz% &
}{{ 	
private
ÇÇ 
	Solicitud
ÇÇ 
MapearSolicitud
ÇÇ )
(
ÇÇ) *!
SolicitudInputModel
ÇÇ* =
solicitudInput
ÇÇ> L
)
ÇÇL M
{
ÉÉ 	
var
ÑÑ 
	solicitud
ÑÑ 
=
ÑÑ 
new
ÑÑ 
	Solicitud
ÑÑ  )
{
ÖÖ 
Fecha
ÜÜ 
=
ÜÜ 
DateTime
ÜÜ  
.
ÜÜ  !
Parse
ÜÜ! &
(
ÜÜ& '
solicitudInput
ÜÜ' 5
.
ÜÜ5 6
Fecha
ÜÜ6 ;
)
ÜÜ; <
,
ÜÜ< =
Estado
áá 
=
áá 
solicitudInput
áá '
.
áá' (
Estado
áá( .
,
áá. /
CodigoAsignatura
àà  
=
àà! "
solicitudInput
àà# 1
.
àà1 2

Asignatura
àà2 <
.
àà< =
Codigo
àà= C
,
ààC D
	IdPersona
ââ 
=
ââ 
solicitudInput
ââ *
.
ââ* +
	IdPersona
ââ+ 4
,
ââ4 5
Detalles
ää 
=
ää 
solicitudInput
ää )
.
ää) *
Detalles
ää* 2
,
ää2 3
SolicitudFecha
ãã 
=
ãã  
DateTime
ãã! )
.
ãã) *
Now
ãã* -
,
ãã- .
Hora
åå 
=
åå 
solicitudInput
åå %
.
åå% &
Hora
åå& *
,
åå* +
Monitor
çç 
=
çç 
solicitudInput
çç (
.
çç( )
Monitor
çç) 0
}
éé 
;
éé 
return
èè 
	solicitud
èè 
;
èè 
}
êê 	
}
ëë 
}íí ˙
aC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Controllers\WeatherForecastController.cs
	namespace 	
StockLabWeb
 
. 
Controllers !
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date   
=   
DateTime   
.    
Now    #
.  # $
AddDays  $ +
(  + ,
index  , 1
)  1 2
,  2 3
TemperatureC!! 
=!! 
rng!! "
.!!" #
Next!!# '
(!!' (
-!!( )
$num!!) +
,!!+ ,
$num!!- /
)!!/ 0
,!!0 1
Summary"" 
="" 
	Summaries"" #
[""# $
rng""$ '
.""' (
Next""( ,
("", -
	Summaries""- 6
.""6 7
Length""7 =
)""= >
]""> ?
}## 
)## 
.$$ 
ToArray$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ±
JC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Hubs\SignalHub.cs
	namespace 	
StockLabWeb
 
. 
Hubs 
{ 
public 

class 
	SignalHub 
: 
Hub 
{ 
} 
} Ë
RC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Models\AsignaturaModel.cs
	namespace 	
StockLabWeb
 
. 
Models 
{ 
public 

class  
AsignaturaInputModel %
{ 
public 
string 
Codigo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Horario		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
} 
public 

class 
AsignaturaViewModel $
:% & 
AsignaturaInputModel' ;
{ 
public 
AsignaturaViewModel "
(" #
)# $
{ 	
} 	
public 
AsignaturaViewModel "
(" #
Asignaturas# .

asignatura/ 9
)9 :
{ 	
Codigo 
= 

asignatura 
.  
Codigo  &
;& '
Nombre 
= 

asignatura 
.  
Nombre  &
;& '
Horario 
= 

asignatura  
.  !
Horario! (
;( )
} 	
} 
} ”
NC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Models\InsumoModel.cs
	namespace 	
StockLabWeb
 
. 
Models 
{ 
public 

class 
InsumoInputModel !
{ 
public 
string 
Item 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
Marca		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
int

 
Cantidad

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
int 
StockMinimo 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 
class 
InsumoViewModel "
:# $
InsumoInputModel% 5
{ 
public 
InsumoViewModel 
( 
)  
{ 	
} 	
public 
InsumoViewModel 
( 
Insumo %
insumo& ,
), -
{ 	
Item 
= 
insumo 
. 
Item 
; 
Descripcion 
= 
insumo  
.  !
Descripcion! ,
;, -
Marca 
= 
insumo 
. 
Marca  
;  !
Cantidad 
= 
insumo 
. 
Cantidad &
;& '
StockMinimo 
= 
insumo  
.  !
StockMinimo! ,
;, -
} 	
} 
} ö
XC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Models\PeriodoAcademicoModel.cs
	namespace 	
StockLabWeb
 
. 
Models 
{ 
public 

class &
PeriodoAcademicoInputModel +
{ 
public 
string 
Codigo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Periodo 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Corte 
{ 
get !
;! "
set# &
;& '
}( )
} 
public

 

class

 %
PeriodoAcademicoViewModel

 *
:

+ ,&
PeriodoAcademicoInputModel

- G
{ 
public %
PeriodoAcademicoViewModel (
(( )
)) *
{* +
}+ ,
} 
} ˝
OC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Models\PersonaModel.cs
	namespace 	
StockLabWeb
 
. 
Models 
{ 
public 

class 
PersonaInputModel "
{ 
public 
string 
Identificacion $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
	Apellidos		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
Correo

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
Edad 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
Sexo 
{ 
get  
;  !
set" %
;% &
}' (
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
PersonaViewModel !
:" #
PersonaInputModel$ 5
{ 
public 
PersonaViewModel 
(  
)  !
{ 	
} 	
public 
PersonaViewModel 
(  
Persona  '
persona( /
)/ 0
{ 	
Identificacion 
= 
persona $
.$ %
Identificacion% 3
;3 4
Nombre 
= 
persona 
. 
Nombre #
;# $
	Apellidos 
= 
persona 
.  
	Apellidos  )
;) *
Correo 
= 
persona 
. 
Correo #
;# $
Edad 
= 
persona 
. 
Edad 
;  
Sexo 
= 
persona 
. 
Sexo 
;  
} 	
}   
}!! Ï$
RC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Models\SolicitudModels.cs
	namespace 	
StockLabWeb
 
. 
Models 
{ 
public 

class 
SolicitudInputModel $
{ 
public		 
string		 
Numero		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
Fecha

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
FechaSolicitud $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Hora 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Monitor 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	IdPersona 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
CodigoAsignatura &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Asignaturas 

Asignatura %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
List 
< 
DetalleInsumo !
>! "
Detalles# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
PeriodoAcademico 
PeriodoAcademico  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
Persona 
Persona 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
SolicitudViewModel #
:$ %
SolicitudInputModel& 9
{ 
public 
SolicitudViewModel !
(! "
)" #
{# $
}$ %
public 
SolicitudViewModel !
(! "
	Solicitud" +
	solicitud, 5
)5 6
{ 	
Numero 
= 
	solicitud 
. 
Numero %
;% &
Fecha 
= 
	solicitud 
. 
Fecha #
.# $
ToShortDateString$ 5
(5 6
)6 7
+8 9
$str: =
+> ?
	solicitud@ I
.I J
FechaJ O
.O P
ToShortTimeStringP a
(a b
)b c
;c d
FechaSolicitud 
= 
	solicitud &
.& '
SolicitudFecha' 5
.5 6
ToShortDateString6 G
(G H
)H I
+J K
$strL O
+P Q
	solicitudR [
.[ \
SolicitudFecha\ j
.j k
ToShortTimeStringk |
(| }
)} ~
;~ 
Estado   
=   
	solicitud   
.   
Estado   %
;  % &
Hora!! 
=!! 
	solicitud!! 
.!! 
Hora!! !
;!!! "
Monitor"" 
="" 
	solicitud"" 
.""  
Monitor""  '
;""' (
	IdPersona## 
=## 
	solicitud## !
.##! "
	IdPersona##" +
;##+ ,

Asignatura$$ 
=$$ 
	solicitud$$ "
.$$" #

Asignatura$$# -
;$$- .
Detalles%% 
=%% 
	solicitud%%  
.%%  !
Detalles%%! )
;%%) *
Persona&& 
=&& 
	solicitud&& 
.&&  
Persona&&  '
;&&' (
cantidadinsumos'' 
='' 
	solicitud'' '
.''' (
CantidadInsumos''( 7
;''7 8
PeriodoAcademico(( 
=(( 
	solicitud(( (
.((( )
PeriodoAcademico(() 9
;((9 :
})) 	
public** 
int** 
cantidadinsumos** "
{**# $
get**% (
;**( )
set*** -
;**- .
}**/ 0
}++ 
},, ¯
OC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Models\UsuarioModel.cs
	namespace 	
StockLabWeb
 
. 
Models 
{ 
public 

class 
UsuarioInputModel "
{ 
public 
string 
Usuario 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
Tipo		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Token

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
	IdPersona 
{  !
get" %
;% &
set' *
;* +
}, -
} 
public 

class 
UsuarioViewModel !
:" #
UsuarioInputModel$ 5
{ 
public 
UsuarioViewModel 
(  
)  !
{ 	
} 	
public 
UsuarioViewModel 
(  
Usuario  '
usuario( /
)/ 0
{ 	
Usuario 
= 
usuario 
. 
User "
;" #
Tipo 
= 
usuario 
. 
Tipo 
;  
Token 
= 
usuario 
. 
Token !
;! "
Estado 
= 
usuario 
. 
Estado #
;# $
Nombre   
=   
usuario   
.   
Nombre   #
;  # $
	Apellidos!! 
=!! 
usuario!! 
.!!  
	Apellidos!!  )
;!!) *
	IdPersona"" 
="" 
usuario"" 
.""  
	IdPersona""  )
;"") *
}## 	
}$$ 
}%% ñ
NC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Pages\Error.cshtml.cs
	namespace

 	
StockLabWeb


 
.

 
Pages

 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ú

CC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Program.cs
	namespace

 	
StockLabWeb


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Ì
RC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Servicios\ServiciosJwt.cs
	namespace 	
StockLabWeb
 
. 
	Servicios 
{ 
public 

class 
ServiciosJwt 
{ 
private 
readonly 

AppSetting #
_appSetting$ /
;/ 0
public 
ServiciosJwt 
( 
IOptions $
<$ %

AppSetting% /
>/ 0

appSetting1 ;
); <
{ 	
_appSetting 
= 

appSetting $
.$ %
Value% *
;* +
} 	
public 
UsuarioViewModel 
GenerarToken  ,
(, -
Usuario- 4
usuario5 <
)< =
{ 	
if 
( 
usuario 
== 
null 
) 
return 
null 
; 
var!! 
usuarioResponse!! 
=!!  !
new!!" %
UsuarioViewModel!!& 6
(!!6 7
usuario!!7 >
)!!> ?
{"" 
Usuario## 
=## 
usuario## !
.##! "
User##" &
,##& '
Tipo$$ 
=$$ 
usuario$$ 
.$$ 
Tipo$$ #
}%% 
;%% 
var(( 
tokenHandler(( 
=(( 
new(( "#
JwtSecurityTokenHandler((# :
(((: ;
)((; <
;((< =
var)) 
key)) 
=)) 
Encoding)) 
.)) 
ASCII)) $
.))$ %
GetBytes))% -
())- .
_appSetting)). 9
.))9 :
Secret)): @
)))@ A
;))A B
var++ 
tokenDescriptor++ 
=++  !
new++" %#
SecurityTokenDescriptor++& =
{,, 
Subject-- 
=-- 
new-- 
ClaimsIdentity-- ,
(--, -
new--- 0
Claim--1 6
[--6 7
]--7 8
{.. 
new// 
Claim// 
(// 

ClaimTypes// (
.//( )
Name//) -
,//- .
usuario/// 6
.//6 7
User//7 ;
.//; <
ToString//< D
(//D E
)//E F
)//F G
,//G H
new00 
Claim00 
(00 

ClaimTypes00 (
.00( )
Role00) -
,00- .
$str00/ 5
)005 6
,006 7
new11 
Claim11 
(11 

ClaimTypes11 (
.11( )
Role11) -
,11- .
$str11/ 5
)115 6
,116 7
}22 
)22 
,22 
Expires33 
=33 
DateTime33 "
.33" #
UtcNow33# )
.33) *
AddDays33* 1
(331 2
$num332 3
)333 4
,334 5
SigningCredentials44 "
=44# $
new44% (
SigningCredentials44) ;
(44; <
new44< ? 
SymmetricSecurityKey44@ T
(44T U
key44U X
)44X Y
,44Y Z
SecurityAlgorithms44[ m
.44m n 
HmacSha256Signature	44n Å
)
44Å Ç
}55 
;55 
var77 
token77 
=77 
tokenHandler77 $
.77$ %
CreateToken77% 0
(770 1
tokenDescriptor771 @
)77@ A
;77A B
usuarioResponse88 
.88 
Token88 !
=88" #
tokenHandler88$ 0
.880 1

WriteToken881 ;
(88; <
token88< A
)88A B
;88B C
return:: 
usuarioResponse:: "
;::" #
};; 	
}<< 
}== √X
CC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\Startup.cs
	namespace 	
StockLabWeb
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services   
.   #
AddControllersWithViews   ,
(  , -
)  - .
;  . /
services!! 
.!! 

AddSignalR!! 
(!!  
)!!  !
;!!! "
var## 
appSettingsSection## "
=### $
Configuration##% 2
.##2 3

GetSection##3 =
(##= >
$str##> J
)##J K
;##K L
services$$ 
.$$ 
	Configure$$ 
<$$ 

AppSetting$$ )
>$$) *
($$* +
appSettingsSection$$+ =
)$$= >
;$$> ?
var(( 
appSettings(( 
=(( 
appSettingsSection(( 0
.((0 1
Get((1 4
<((4 5

AppSetting((5 ?
>((? @
(((@ A
)((A B
;((B C
var)) 
key)) 
=)) 
Encoding)) 
.)) 
ASCII)) $
.))$ %
GetBytes))% -
())- .
appSettings)). 9
.))9 :
Secret)): @
)))@ A
;))A B
services++ 
.++ 
AddControllers++ #
(++# $
)++$ %
;++% &
services,, 
.,, 
AddCors,, 
(,, 
),, 
;,, 
services.. 
... 
AddAuthentication.. &
(..& '
x..' (
=>..) +
{// 
x00 
.00 %
DefaultAuthenticateScheme00 +
=00, -
JwtBearerDefaults00. ?
.00? @ 
AuthenticationScheme00@ T
;00T U
x11 
.11 "
DefaultChallengeScheme11 (
=11) *
JwtBearerDefaults11+ <
.11< = 
AuthenticationScheme11= Q
;11Q R
}22 
)22 
.33 
AddJwtBearer33 
(33 
x33 
=>33 
{44 
x55 
.55  
RequireHttpsMetadata55 &
=55' (
false55) .
;55. /
x66 
.66 
	SaveToken66 
=66 
true66 "
;66" #
x77 
.77 %
TokenValidationParameters77 +
=77, -
new77. 1%
TokenValidationParameters772 K
{88 $
ValidateIssuerSigningKey99 ,
=99- .
true99/ 3
,993 4
IssuerSigningKey:: $
=::% &
new::' * 
SymmetricSecurityKey::+ ?
(::? @
key::@ C
)::C D
,::D E
ValidateIssuer;; "
=;;# $
false;;% *
,;;* +
ValidateAudience<< $
=<<% &
false<<' ,
}== 
;== 
}>> 
)>> 
;>> 
stringBB 
connectionStringBB #
=BB$ %
ConfigurationBB& 3
[BB3 4
$strBB4 Y
]BBY Z
;BBZ [
servicesCC 
.CC 
AddDbContextCC !
<CC! "
StockLabContextCC" 1
>CC1 2
(CC2 3
ContextCC3 :
=>CC; =
ContextCC> E
.CCE F
UseSqlServerCCF R
(CCR S
connectionStringCCS c
)CCc d
)CCd e
;CCe f
servicesFF 
.FF 
AddSwaggerGenFF "
(FF" #
cFF# $
=>FF% '
{GG 
cHH 
.HH 

SwaggerDocHH 
(HH 
$strHH !
,HH! "
newHH# &
OpenApiInfoHH' 2
{II 
VersionJJ 
=JJ 
$strJJ "
,JJ" #
TitleKK 
=KK 
$strKK (
,KK( )
DescriptionLL 
=LL  !
$strLL" E
,LLE F
TermsOfServiceMM "
=MM# $
newMM% (
UriMM) ,
(MM, -
$strMM- P
)MMP Q
,MMQ R
ContactNN 
=NN 
newNN !
OpenApiContactNN" 0
{OO 
NamePP 
=PP 
$strPP )
,PP) *
EmailQQ 
=QQ 
stringQQ  &
.QQ& '
EmptyQQ' ,
,QQ, -
UrlRR 
=RR 
newRR !
UriRR" %
(RR% &
$strRR& V
)RRV W
,RRW X
}SS 
,SS 
LicenseTT 
=TT 
newTT !
OpenApiLicenseTT" 0
{UU 
NameVV 
=VV 
$strVV ;
,VV; <
UrlWW 
=WW 
newWW !
UriWW" %
(WW% &
$strWW& I
)WWI J
,WWJ K
}XX 
}YY 
)YY 
;YY 
cZZ 
.ZZ !
AddSecurityDefinitionZZ '
(ZZ' (
$strZZ( 0
,ZZ0 1
newZZ2 5!
OpenApiSecuritySchemeZZ6 K
{[[ 
Name\\ 
=\\ 
$str\\ *
,\\* +
Type]] 
=]] 
SecuritySchemeType]] -
.]]- .
ApiKey]]. 4
,]]4 5
Scheme^^ 
=^^ 
$str^^ %
,^^% &
BearerFormat__  
=__! "
$str__# (
,__( )
In`` 
=`` 
ParameterLocation`` *
.``* +
Header``+ 1
,``1 2
Descriptionaa 
=aa  !
$straa" U
}bb 
)bb 
;bb 
ccc 
.cc "
AddSecurityRequirementcc (
(cc( )
newcc) ,&
OpenApiSecurityRequirementcc- G
{dd 
{ee 
newff !
OpenApiSecuritySchemeff 1
{gg 
	Referencehh %
=hh& '
newhh( +
OpenApiReferencehh, <
{ii 
Typejj  $
=jj% &
ReferenceTypejj' 4
.jj4 5
SecuritySchemejj5 C
,jjC D
Idkk  "
=kk# $
$strkk% -
}ll 
}mm 
,mm 
newnn 
stringnn "
[nn" #
]nn# $
{nn% &
}nn& '
}oo 
}pp 
)pp 
;pp 
crr 
.rr 
OperationFilterrr !
<rr! "
AuthOperationFilterrr" 5
>rr5 6
(rr6 7
)rr7 8
;rr8 9
}ss 
)ss 
;ss 
servicesvv 
.vv 
AddSpaStaticFilesvv &
(vv& '
configurationvv' 4
=>vv5 7
{ww 
configurationxx 
.xx 
RootPathxx &
=xx' (
$strxx) 9
;xx9 :
}yy 
)yy 
;yy 
}zz 	
public}} 
void}} 
	Configure}} 
(}} 
IApplicationBuilder}} 1
app}}2 5
,}}5 6
IWebHostEnvironment}}7 J
env}}K N
)}}N O
{~~ 	
if 
( 
env 
. 
IsDevelopment !
(! "
)" #
)# $
{
ÄÄ 
app
ÅÅ 
.
ÅÅ '
UseDeveloperExceptionPage
ÅÅ -
(
ÅÅ- .
)
ÅÅ. /
;
ÅÅ/ 0
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
app
ÖÖ 
.
ÖÖ !
UseExceptionHandler
ÖÖ '
(
ÖÖ' (
$str
ÖÖ( 0
)
ÖÖ0 1
;
ÖÖ1 2
app
áá 
.
áá 
UseHsts
áá 
(
áá 
)
áá 
;
áá 
}
àà 
app
ää 
.
ää !
UseHttpsRedirection
ää #
(
ää# $
)
ää$ %
;
ää% &
app
ãã 
.
ãã 
UseStaticFiles
ãã 
(
ãã 
)
ãã  
;
ãã  !
if
åå 
(
åå 
!
åå 
env
åå 
.
åå 
IsDevelopment
åå "
(
åå" #
)
åå# $
)
åå$ %
{
çç 
app
éé 
.
éé 
UseSpaStaticFiles
éé %
(
éé% &
)
éé& '
;
éé' (
}
èè 
app
ëë 
.
ëë 

UseRouting
ëë 
(
ëë 
)
ëë 
;
ëë 
app
ìì 
.
ìì 
UseCors
ìì 
(
ìì 
x
ìì 
=>
ìì 
x
ìì 
.
îî 
AllowAnyOrigin
îî 
(
îî  
)
îî  !
.
ïï 
AllowAnyMethod
ïï 
(
ïï  
)
ïï  !
.
ññ 
AllowAnyHeader
ññ 
(
ññ  
)
ññ  !
)
ññ! "
;
ññ" #
app
òò 
.
òò 
UseAuthentication
òò !
(
òò! "
)
òò" #
;
òò# $
app
ôô 
.
ôô 
UseAuthorization
ôô  
(
ôô  !
)
ôô! "
;
ôô" #
app
úú 
.
úú 
UseEndpoints
úú 
(
úú 
	endpoints
úú &
=>
úú' )
{
ùù 
	endpoints
ûû 
.
ûû  
MapControllerRoute
ûû ,
(
ûû, -
name
üü 
:
üü 
$str
üü #
,
üü# $
pattern
†† 
:
†† 
$str
†† @
)
††@ A
;
††A B
	endpoints
°° 
.
°° 
MapHub
°° $
<
°°$ %
	SignalHub
°°% .
>
°°. /
(
°°/ 0
$str
°°0 <
)
°°< =
;
°°= >
}
¢¢ 
)
¢¢ 
;
¢¢ 
app
§§ 
.
§§ 

UseSwagger
§§ 
(
§§ 
)
§§ 
;
§§ 
app
•• 
.
•• 
UseSwaggerUI
•• 
(
•• 
c
•• 
=>
•• !
{
¶¶ 
c
ßß 
.
ßß 
SwaggerEndpoint
ßß !
(
ßß! "
$str
ßß" <
,
ßß< =
$str
ßß> I
)
ßßI J
;
ßßJ K
}
®® 
)
®® 
;
®® 
app
™™ 
.
™™ 
UseSpa
™™ 
(
™™ 
spa
™™ 
=>
™™ 
{
´´ 
spa
ØØ 
.
ØØ 
Options
ØØ 
.
ØØ 

SourcePath
ØØ &
=
ØØ' (
$str
ØØ) 4
;
ØØ4 5
if
±± 
(
±± 
env
±± 
.
±± 
IsDevelopment
±± %
(
±±% &
)
±±& '
)
±±' (
{
≤≤ 
spa
≥≥ 
.
≥≥ !
UseAngularCliServer
≥≥ +
(
≥≥+ ,
	npmScript
≥≥, 5
:
≥≥5 6
$str
≥≥7 >
)
≥≥> ?
;
≥≥? @
}
¥¥ 
}
µµ 
)
µµ 
;
µµ 
}
∂∂ 	
}
∑∑ 
}∏∏ –
KC:\Users\norma\Desktop\StockLab3.0-main-main\StockLabWeb\WeatherForecast.cs
	namespace 	
StockLabWeb
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 