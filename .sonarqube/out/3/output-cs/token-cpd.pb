Ç.
HC:\Users\norma\Desktop\StockLab3.0-main-main\Logica\AsignaturaService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
AsignaturaService		 "
{

 
private 
readonly 
StockLabContext (
_context) 1
;1 2
public 
AsignaturaService  
(  !
StockLabContext! 0
context1 8
)8 9
{ 	
_context 
= 
context 
; 
} 	
public %
GuardarAsignaturaResponse (
GuardarAsignatura) :
(: ;
Asignaturas; F

asignaturaG Q
)Q R
{ 	
try 
{ 
var 
findasignatura "
=# $
_context% -
.- .
Asignaturas. 9
.9 :
Find: >
(> ?

asignatura? I
.I J
CodigoJ P
)P Q
;Q R
if 
( 
findasignatura !
==" $
null% )
)) *
{ 
_context 
. 
Asignaturas (
.( )
Add) ,
(, -

asignatura- 7
)7 8
;8 9
_context 
. 
SaveChanges (
(( )
)) *
;* +
return 
new %
GuardarAsignaturaResponse 8
(8 9

asignatura9 C
)C D
;D E
} 
else 
{ 
return 
new %
GuardarAsignaturaResponse 8
(8 9
$str9 p
,p q
$strq |
)| }
;} ~
}   
}!! 
catch"" 
("" 
	Exception"" 
e"" 
)"" 
{## 
return$$ 
new$$ %
GuardarAsignaturaResponse$$ 4
($$4 5
$"$$5 7$
Error en la aplicacion: $$7 O
{$$O P
e$$P Q
.$$Q R
Message$$R Y
}$$Y Z
"$$Z [
,$$[ \
$str$$] d
)$$d e
;$$e f
}%% 
}&& 	
public(( '
ConsultarAsignaturaResponse(( * 
ConsultarAsignaturas((+ ?
(((? @
)((@ A
{)) 	
try** 
{++ 
return,, 
new,, '
ConsultarAsignaturaResponse,, 6
(,,6 7
_context,,7 ?
.,,? @
Asignaturas,,@ K
.,,K L
ToList,,L R
(,,R S
),,S T
),,T U
;,,U V
}-- 
catch.. 
(.. 
	Exception.. 
e.. 
).. 
{// 
return00 
new00 '
ConsultarAsignaturaResponse00 6
(006 7
$"007 9$
Error en la aplicacion: 009 Q
{00Q R
e00R S
.00S T
Message00T [
}00[ \
"00\ ]
)00] ^
;00^ _
}11 
}22 	
public44 
class44 '
ConsultarAsignaturaResponse44 0
{55 	
public66 '
ConsultarAsignaturaResponse66 .
(66. /
List66/ 3
<663 4
Asignaturas664 ?
>66? @
asignaturas66A L
)66L M
{77 
Error88 
=88 
false88 
;88 
Asignaturas99 
=99 
asignaturas99 )
;99) *
}:: 
public<< '
ConsultarAsignaturaResponse<< .
(<<. /
string<</ 5
mensaje<<6 =
)<<= >
{== 
Error>> 
=>> 
true>> 
;>> 
Mensaje?? 
=?? 
mensaje?? !
;??! "
}@@ 
publicAA 
boolAA 
ErrorAA 
{AA 
getAA  #
;AA# $
setAA% (
;AA( )
}AA* +
publicBB 
stringBB 
MensajeBB !
{BB" #
getBB$ '
;BB' (
setBB) ,
;BB, -
}BB. /
publicCC 
ListCC 
<CC 
AsignaturasCC #
>CC# $
AsignaturasCC% 0
{CC1 2
getCC3 6
;CC6 7
setCC8 ;
;CC; <
}CC= >
}DD 	
publicEE 
classEE %
GuardarAsignaturaResponseEE .
{FF 	
publicGG %
GuardarAsignaturaResponseGG ,
(GG, -
AsignaturasGG- 8

asignaturaGG9 C
)GGC D
{HH 

AsignaturaII 
=II 

asignaturaII '
;II' (
ErrorJJ 
=JJ 
falseJJ 
;JJ 
}KK 
publicMM %
GuardarAsignaturaResponseMM ,
(MM, -
stringMM- 3
mensajeMM4 ;
,MM; <
stringMM= C
estadoMMD J
)MMJ K
{NN 
ErrorOO 
=OO 
trueOO 
;OO 
MensajePP 
=PP 
mensajePP !
;PP! "
EstadoQQ 
=QQ 
estadoQQ 
;QQ  
}RR 
publicSS 
stringSS 
EstadoSS  
{SS! "
getSS# &
;SS& '
setSS( +
;SS+ ,
}SS- .
publicTT 
boolTT 
ErrorTT 
{TT 
getTT  #
;TT# $
setTT% (
;TT( )
}TT* +
publicUU 
stringUU 
MensajeUU !
{UU" #
getUU$ '
;UU' (
setUU) ,
;UU, -
}UU. /
publicVV 
AsignaturasVV 

AsignaturaVV )
{VV* +
getVV, /
;VV/ 0
setVV1 4
;VV4 5
}VV6 7
}WW 	
}XX 
}YY ÑD
DC:\Users\norma\Desktop\StockLab3.0-main-main\Logica\InsumoService.cs
	namespace 	
Logica
 
{ 
public		 

class		 
InsumoService		 
{

 
private 
readonly 
StockLabContext (
_context) 1
;1 2
public 
InsumoService 
( 
StockLabContext ,
context- 4
)4 5
{ 	
_context 
= 
context 
; 
} 	
public !
GuardarInsumoResponse $
GuardarInsumo% 2
(2 3
Insumo3 9
insumo: @
)@ A
{ 	
try 
{ 
int 
total 
= 
_context $
.$ %
Insumos% ,
., -
ToList- 3
(3 4
)4 5
.5 6
Count6 ;
;; <
insumo 
. 
Item 
= 
( 
total $
+% &
$num' (
)( )
+* +
$str, .
;. /
_context 
. 
Insumos  
.  !
Add! $
($ %
insumo% +
)+ ,
;, -
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new !
GuardarInsumoResponse 0
(0 1
insumo1 7
)7 8
;8 9
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new !
GuardarInsumoResponse 0
(0 1
$"1 3$
Error en la aplicacion: 3 K
{K L
eL M
.M N
MessageN U
}U V
"V W
,W X
$strY `
)` a
;a b
} 
} 	
public"" !
GuardarInsumoResponse"" $$
ActualizarCantidadInsumo""% =
(""= >
string""> D
codigo""E K
,""K L
int""M P
cantidad""Q Y
)""Y Z
{## 	
try$$ 
{%% 
var&& 
insumoresponse&& "
=&&# $
_context&&% -
.&&- .
Insumos&&. 5
.&&5 6
Find&&6 :
(&&: ;
codigo&&; A
)&&A B
;&&B C
if'' 
('' 
insumoresponse'' !
!=''" $
null''% )
)'') *
{(( 
insumoresponse)) "
.))" #
Cantidad))# +
+=)), .
cantidad))/ 7
;))7 8
_context** 
.** 
Insumos** $
.**$ %
Update**% +
(**+ ,
insumoresponse**, :
)**: ;
;**; <
_context++ 
.++ 
SaveChanges++ (
(++( )
)++) *
;++* +
return,, 
new,, !
GuardarInsumoResponse,, 4
(,,4 5
insumoresponse,,5 C
),,C D
;,,D E
}-- 
else.. 
{// 
return00 
new00 !
GuardarInsumoResponse00 4
(004 5
$str005 O
,00O P
$str00Q \
)00\ ]
;00] ^
}11 
}22 
catch33 
(33 
	Exception33 
e33 
)33 
{44 
return55 
new55 !
GuardarInsumoResponse55 0
(550 1
$"551 3$
Error en la aplicacion: 553 K
{55K L
e55L M
.55M N
Message55N U
}55U V
"55V W
,55W X
$str55Y k
)55k l
;55l m
}66 
}77 	
public99 #
ConsultarInsumoResponse99 &
ConsultarInsumos99' 7
(997 8
)998 9
{:: 	
try;; 
{<< 
return== 
new== #
ConsultarInsumoResponse== 2
(==2 3
_context==3 ;
.==; <
Insumos==< C
.==C D
ToList==D J
(==J K
)==K L
)==L M
;==M N
}>> 
catch?? 
(?? 
	Exception?? 
e?? 
)?? 
{@@ 
returnAA 
newAA #
ConsultarInsumoResponseAA 2
(AA2 3
$"AA3 5
Error AA5 ;
{AA; <
eAA< =
.AA= >
MessageAA> E
}AAE F
"AAF G
)AAG H
;AAH I
}BB 
}CC 	
publicEE !
GuardarInsumoResponseEE $
BuscarInsumoEE% 1
(EE1 2
stringEE2 8
codigoEE9 ?
)EE? @
{EE@ A
tryFF 
{GG 
varHH 
insumoresponseHH "
=HH# $
_contextHH% -
.HH- .
InsumosHH. 5
.HH5 6
FindHH6 :
(HH: ;
codigoHH; A
)HHA B
;HHB C
ifJJ 
(JJ 
insumoresponseJJ !
!=JJ" $
nullJJ% )
)JJ) *
{KK 
returnLL 
newLL !
GuardarInsumoResponseLL 4
(LL4 5
insumoresponseLL5 C
)LLC D
;LLD E
}MM 
elseNN 
{OO 
returnPP 
newPP !
GuardarInsumoResponsePP 4
(PP4 5
$strPP5 [
,PP[ \
$strPP\ g
)PPg h
;PPh i
}QQ 
}RR 
catchSS 
(SS 
	ExceptionSS 
eSS 
)SS 
{TT 
returnUU 
newUU !
GuardarInsumoResponseUU 0
(UU0 1
$"UU1 3$
Error en la aplicacion: UU3 K
{UUK L
eUUL M
.UUM N
MessageUUN U
}UUU V
"UUV W
,UUW X
$strUUY `
)UU` a
;UUa b
}VV 
}WW 	
publicYY 
classYY #
ConsultarInsumoResponseYY ,
{ZZ 	
public[[ #
ConsultarInsumoResponse[[ *
([[* +
List[[+ /
<[[/ 0
Insumo[[0 6
>[[6 7
insumos[[8 ?
)[[? @
{\\ 
Error]] 
=]] 
false]] 
;]] 
Insumos^^ 
=^^ 
insumos^^ !
;^^! "
}__ 
publicaa #
ConsultarInsumoResponseaa *
(aa* +
stringaa+ 1
mensajeaa2 9
)aa9 :
{bb 
Errorcc 
=cc 
truecc 
;cc 
Mensajedd 
=dd 
mensajedd !
;dd! "
}ee 
publicff 
boolff 
Errorff 
{ff 
getff  #
;ff# $
setff% (
;ff( )
}ff* +
publicgg 
stringgg 
Mensajegg !
{gg" #
getgg$ '
;gg' (
setgg) ,
;gg, -
}gg. /
publichh 
Listhh 
<hh 
Insumohh 
>hh 
Insumoshh  '
{hh( )
gethh* -
;hh- .
sethh/ 2
;hh2 3
}hh4 5
}ii 	
publicjj 
classjj !
GuardarInsumoResponsejj *
{kk 	
publicll !
GuardarInsumoResponsell (
(ll( )
Insumoll) /
insumoll0 6
)ll6 7
{mm 
Errornn 
=nn 
falsenn 
;nn 
Insumooo 
=oo 
insumooo 
;oo  
}pp 
publicrr !
GuardarInsumoResponserr (
(rr( )
stringrr) /
mensajerr0 7
,rr7 8
stringrr9 ?
estadorr@ F
)rrF G
{ss 
Errortt 
=tt 
truett 
;tt 
Mensajeuu 
=uu 
mensajeuu !
;uu! "
Estadovv 
=vv 
estadovv 
;vv  
}ww 
publicxx 
stringxx 
Estadoxx  
{xx! "
getxx# &
;xx& '
setxx( +
;xx+ ,
}xx- .
publicyy 
boolyy 
Erroryy 
{yy 
getyy  #
;yy# $
setyy% (
;yy( )
}yy* +
publiczz 
stringzz 
Mensajezz !
{zz" #
getzz$ '
;zz' (
setzz) ,
;zz, -
}zz. /
public{{ 
Insumo{{ 
Insumo{{  
{{{! "
get{{# &
;{{& '
set{{( +
;{{+ ,
}{{- .
}|| 	
}}} 
}~~  
CC:\Users\norma\Desktop\StockLab3.0-main-main\Logica\LoginService.cs
	namespace 	
Logica
 
{ 
public 

class 
LoginService 
{		 
private

 
readonly

 
StockLabContext

 (
_context

) 1
;

1 2
public 
LoginService 
( 
StockLabContext +
context, 3
)3 4
{ 	
_context 
= 
context 
; 
} 	
public 
Usuario 
ValidarUsuario %
(% &
string& ,
nombreUsuario- :
,: ;
string< B

contrasenaC M
)M N
{ 	
try 
{ 
return 
_context 
.  
Usuarios  (
.( )
Where) .
(. /
u/ 0
=>1 3
u4 5
.5 6
User6 :
.: ;
ToLower; B
(B C
)C D
==E G
nombreUsuarioH U
.U V
ToLowerV ]
(] ^
)^ _
&&` b
uc d
.d e
Passworde m
==n p

contrasenaq {
&&| ~
(	 Ä
u
Ä Å
.
Å Ç
Estado
Ç à
==
â ã
$str
å î
||
ï ó
u
ò ô
.
ô ö
Estado
ö †
==
° £
$str
§ ∞
)
∞ ±
)
± ≤
.
≤ ≥
FirstOrDefault
≥ ¡
(
¡ ¬
)
¬ √
;
√ ƒ
} 
catch 
( 
	Exception 
) 
{ 
return 
null 
; 
} 
} 	
} 
} ©
NC:\Users\norma\Desktop\StockLab3.0-main-main\Logica\PeriodoAcademicoService.cs
	namespace 	
Logica
 
{ 
public 

class #
PeriodoAcademicoService (
{		 
private

 
readonly

 
StockLabContext

 (
_context

) 1
;

1 2
public #
PeriodoAcademicoService &
(& '
StockLabContext' 6
context7 >
)> ?
{ 	
_context 
= 
context 
; 
} 	
public "
GuardarPeriodoResponse %
GuardarPeriodo& 4
(4 5
PeriodoAcademico5 E
periodoF M
)M N
{ 	
try 
{ 
periodo 
. 
Codigo 
=  
(! "
_context" *
.* +
PeriodosAcademicos+ =
.= >
ToList> D
(D E
)E F
.F G
CountG L
+M N
$numO P
)P Q
.Q R
ToStringR Z
(Z [
)[ \
;\ ]
_context 
. 
PeriodosAcademicos +
.+ ,
Add, /
(/ 0
periodo0 7
)7 8
;8 9
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new "
GuardarPeriodoResponse 1
(1 2
periodo2 9
)9 :
;: ;
} 
catch 
( 
	Exception 
e 
) 
{ 
return 
new "
GuardarPeriodoResponse 1
(1 2
$"2 4$
Error en la aplicacion: 4 L
{L M
eM N
.N O
MessageO V
}V W
"W X
)X Y
;Y Z
} 
} 	
public   
class   "
GuardarPeriodoResponse   +
{!! 	
public"" "
GuardarPeriodoResponse"" )
("") *
PeriodoAcademico""* :
periodoAcademico""; K
)""K L
{## 
Error$$ 
=$$ 
false$$ 
;$$ 
PeriodoAcademico%%  
=%%! "
periodoAcademico%%# 3
;%%3 4
}&& 
public(( "
GuardarPeriodoResponse(( )
((() *
string((* 0
mensaje((1 8
)((8 9
{)) 
Error** 
=** 
true** 
;** 
Mensaje++ 
=++ 
mensaje++ !
;++! "
},, 
public-- 
bool-- 
Error-- 
{-- 
get--  #
;--# $
set--% (
;--( )
}--* +
public.. 
string.. 
Mensaje.. !
{.." #
get..$ '
;..' (
set..) ,
;.., -
}... /
public// 
PeriodoAcademico// #
PeriodoAcademico//$ 4
{//5 6
get//7 :
;//: ;
set//< ?
;//? @
}//A B
}00 	
}11 
}22 ÆI
EC:\Users\norma\Desktop\StockLab3.0-main-main\Logica\PersonaService.cs
	namespace		 	
Logica		
 
{

 
public 

class 
PersonaService 
{ 
private 
readonly 
StockLabContext (
_context) 1
;1 2
private 
Email 
Email 
; 
public 
PersonaService 
( 
StockLabContext -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public "
GuardarPersonaResponse %
GuardarPersona& 4
(4 5
Persona5 <
persona= D
)D E
{ 	
try 
{ 
Email 
= 
new 
Email !
(! "
)" #
;# $
var 
personaresponse #
=$ %
_context& .
.. /
Personas/ 7
.7 8
Find8 <
(< =
persona= D
.D E
IdentificacionE S
)S T
;T U
if 
( 
personaresponse "
==# %
null& *
)* +
{ 
Usuario 
usuario #
=$ %
persona& -
.- .
Usuario. 5
;5 6
usuario 
. 
	IdPersona %
=& '
persona( /
./ 0
Identificacion0 >
;> ?
persona 
. 
Usuario #
=$ %
usuario& -
;- .
_context   
.   
Personas   %
.  % &
Add  & )
(  ) *
persona  * 1
)  1 2
;  2 3
_context!! 
.!! 
SaveChanges!! (
(!!( )
)!!) *
;!!* +
Email"" 
."" 
EnviarEmail"" %
(""% &
usuario""& -
.""- .
User"". 2
,""2 3
$str""4 G
+""H I
DateTime""J R
.""R S
Now""S V
.""V W
ToLongTimeString""W g
(""g h
)""h i
,""i j
usuario""j q
.""q r
Nombre""r x
,""x y
usuario	""y Ä
.
""Ä Å
Password
""Å â
)
""â ä
;
""ä ã
return## 
new## "
GuardarPersonaResponse## 5
(##5 6
persona##6 =
)##= >
;##> ?
}$$ 
else%% 
{&& 
return'' 
new'' "
GuardarPersonaResponse'' 5
(''5 6
$str''6 A
)''A B
;''B C
}(( 
})) 
catch** 
(** 
	Exception** 
e** 
)** 
{++ 
return,, 
new,, "
GuardarPersonaResponse,, 1
(,,1 2
$",,2 4
Error: ,,4 ;
{,,; <
e,,< =
.,,= >
Message,,> E
},,E F
",,F G
),,G H
;,,H I
}-- 
}.. 	
public00 !
BuscarPersonaResponse00 $
BuscarPersona00% 2
(002 3
string003 9
id00: <
)00< =
{11 	
try22 
{33 
var44 
response44 
=44 
_context44 '
.44' (
Personas44( 0
.440 1
Find441 5
(445 6
id446 8
)448 9
;449 :
if55 
(55 
response55 
==55 
null55 #
)55# $
{66 
return77 
new77 !
BuscarPersonaResponse77 4
(774 5
$"775 7
	No existe777 @
"77@ A
)77A B
;77B C
}88 
else99 
{:: 
return;; 
new;; !
BuscarPersonaResponse;; 4
(;;4 5
response;;5 =
);;= >
;;;> ?
}<< 
}>> 
catch?? 
(?? 
	Exception?? 
e?? 
)?? 
{@@ 
returnAA 
newAA !
BuscarPersonaResponseAA 0
(AA0 1
$"AA1 3
Error: AA3 :
{AA: ;
eAA; <
.AA< =
MessageAA= D
}AAD E
"AAE F
)AAF G
;AAG H
}BB 
}CC 	
publicEE $
ConsultarPersonasReponseEE '
ConsultarMonitoresEE( :
(EE: ;
)EE; <
{FF 	
tryGG 
{HH 
varII 
responseII 
=II 
_contextII '
.II' (
PersonasII( 0
.II0 1
IncludeII1 8
(II8 9
dII9 :
=>II; =
dII> ?
.II? @
UsuarioII@ G
)IIG H
.IIH I
WhereIII N
(IIN O
mIIO P
=>IIQ S
mIIT U
.IIU V
UsuarioIIV ]
.II] ^
TipoII^ b
==IIc e
$strIIf o
)IIo p
.IIp q
ToListIIq w
(IIw x
)IIx y
;IIy z
returnKK 
newKK $
ConsultarPersonasReponseKK 3
(KK3 4
responseKK4 <
)KK< =
;KK= >
}LL 
catchMM 
(MM 
	ExceptionMM 
eMM 
)MM 
{NN 
returnOO 
newOO $
ConsultarPersonasReponseOO 3
(OO3 4
$strOO4 H
+OOH I
eOOJ K
.OOK L
MessageOOL S
)OOS T
;OOT U
}PP 
}QQ 	
publicSS 
classSS $
ConsultarPersonasReponseSS -
{TT 	
publicUU $
ConsultarPersonasReponseUU +
(UU+ ,
ListUU, 0
<UU0 1
PersonaUU1 8
>UU8 9
personasUU: B
)UUB C
{VV 
ErrorWW 
=WW 
falseWW 
;WW 
PersonasXX 
=XX 
personasXX #
;XX# $
}YY 
publicZZ $
ConsultarPersonasReponseZZ +
(ZZ+ ,
stringZZ, 2
mensajeZZ3 :
)ZZ: ;
{[[ 
Error\\ 
=\\ 
true\\ 
;\\ 
Mensaje]] 
=]] 
mensaje]] !
;]]! "
}^^ 
public__ 
bool__ 
Error__ 
{__ 
get__  #
;__# $
set__% (
;__( )
}__* +
public`` 
string`` 
Mensaje`` !
{``" #
get``$ '
;``' (
set``) ,
;``, -
}``. /
publicaa 
Listaa 
<aa 
Personaaa 
>aa  
Personasaa! )
{aa* +
getaa, /
;aa/ 0
setaa1 4
;aa4 5
}aa6 7
}bb 	
publicdd 
classdd !
BuscarPersonaResponsedd *
{ee 	
publicff !
BuscarPersonaResponseff (
(ff( )
Personaff) 0
personaff1 8
)ff8 9
{gg 
Errorhh 
=hh 
falsehh 
;hh 
Personaii 
=ii 
personaii !
;ii! "
}jj 
publicll !
BuscarPersonaResponsell (
(ll( )
stringll) /
mensajell0 7
)ll7 8
{mm 
Errornn 
=nn 
truenn 
;nn 
Mensajeoo 
=oo 
mensajeoo !
;oo! "
}pp 
publicqq 
boolqq 
Errorqq 
{qq 
getqq  #
;qq# $
setqq% (
;qq( )
}qq* +
publicrr 
stringrr 
Mensajerr !
{rr" #
getrr$ '
;rr' (
setrr) ,
;rr, -
}rr. /
publicss 
Personass 
Personass "
{ss# $
getss% (
;ss( )
setss* -
;ss- .
}ss/ 0
}tt 	
publicvv 
classvv "
GuardarPersonaResponsevv +
{ww 	
publicxx "
GuardarPersonaResponsexx )
(xx) *
Personaxx* 1
personaxx2 9
)xx9 :
{yy 
Errorzz 
=zz 
falsezz 
;zz 
Persona{{ 
={{ 
persona{{ !
;{{! "
}|| 
public}} "
GuardarPersonaResponse}} )
(}}) *
string}}* 0
mensaje}}1 8
)}}8 9
{~~ 
Error 
= 
true 
; 
Mensaje
ÄÄ 
=
ÄÄ 
mensaje
ÄÄ !
;
ÄÄ! "
}
ÅÅ 
public
ÇÇ 
bool
ÇÇ 
Error
ÇÇ 
{
ÇÇ 
get
ÇÇ  #
;
ÇÇ# $
set
ÇÇ% (
;
ÇÇ( )
}
ÇÇ* +
public
ÉÉ 
string
ÉÉ 
Mensaje
ÉÉ !
{
ÉÉ" #
get
ÉÉ$ '
;
ÉÉ' (
set
ÉÉ) ,
;
ÉÉ, -
}
ÉÉ. /
public
ÑÑ 
Persona
ÑÑ 
Persona
ÑÑ "
{
ÑÑ# $
get
ÑÑ% (
;
ÑÑ( )
set
ÑÑ* -
;
ÑÑ- .
}
ÑÑ/ 0
}
ÖÖ 	
}
ÜÜ 
}áá ãƒ
GC:\Users\norma\Desktop\StockLab3.0-main-main\Logica\SolicitudService.cs
	namespace 	
Logica
 
{		 
public

 

class

 
SolicitudService

 !
{ 
private 
readonly 
StockLabContext (
_context) 1
;1 2
public 
SolicitudService 
(  
StockLabContext  /
context0 7
)7 8
{ 	
_context 
= 
context 
; 
} 	
public $
GuardarSolicitudResponse '
GuardarSolicitud( 8
(8 9
	Solicitud9 B
	solicitudC L
)L M
{ 	
try 
{ 
int 
total 
= 
_context $
.$ %
Solicitudes% 0
.0 1
ToList1 7
(7 8
)8 9
.9 :
Count: ?
;? @
	solicitud 
. 
Numero  
=! "
(# $
total$ )
+* +
$num, -
)- .
.. /
ToString/ 7
(7 8
)8 9
;9 :
int 
suma 
= 
	solicitud $
.$ %
Detalles% -
.- .
Sum. 1
(1 2
c2 3
=>4 6
c7 8
.8 9
Cantidad9 A
)A B
;B C
	solicitud 
. 
CantidadInsumos )
=* +
suma, 0
;0 1
	solicitud 
. 
	IdPeriodo #
=$ %
_context& .
.. /
PeriodosAcademicos/ A
.A B
ToListB H
(H I
)I J
.J K
MaxK N
(N O
dO P
=>Q S
dT U
.U V
CodigoV \
)\ ]
;] ^
var 
insumos 
= 
_context &
.& '
Insumos' .
.. /
ToList/ 5
(5 6
)6 7
;7 8
foreach 
( 
var 
item !
in" $
	solicitud% .
.. /
Detalles/ 7
)7 8
{ 
item 
. 
NumeroDetalle &
+=' )
	solicitud* 3
.3 4
Numero4 :
;: ;
foreach   
(   
var    
item2  ! &
in  ' )
insumos  * 1
)  1 2
{!! 
if"" 
("" 
item""  
.""  !
CodigoInsumo""! -
=="". 0
item2""1 6
.""6 7
Item""7 ;
)""; <
{## 
if$$ 
($$  
item$$  $
.$$$ %
Cantidad$$% -
>$$. /
item2$$0 5
.$$5 6
Cantidad$$6 >
)$$> ?
{%% 
return&&  &
new&&' *$
GuardarSolicitudResponse&&+ C
(&&C D
$str&&D [
)&&[ \
;&&\ ]
}'' 
}(( 
})) 
}** 
_context++ 
.++ 
Solicitudes++ $
.++$ %
Add++% (
(++( )
	solicitud++) 2
)++2 3
;++3 4
_context,, 
.,, 
SaveChanges,, $
(,,$ %
),,% &
;,,& '
return-- 
new-- $
GuardarSolicitudResponse-- 3
(--3 4
	solicitud--4 =
)--= >
;--> ?
}.. 
catch// 
(// 
	Exception// 
e// 
)// 
{00 
return11 
new11 $
GuardarSolicitudResponse11 3
(113 4
$"114 6
Error: 116 =
{11= >
e11> ?
.11? @
Message11@ G
}11G H
"11H I
)11I J
;11J K
}22 
}33 	
public55 &
ConsultarSolicitudResponse55 ) 
ConsultarSolicitudes55* >
(55> ?
)55? @
{66 	
try77 
{88 
List99 
<99 
	Solicitud99 
>99 
Solicitudes99  +
=99, -
_context99. 6
.996 7
Solicitudes997 B
.99B C
Include99C J
(99J K
s99K L
=>99M O
s99P Q
.99Q R
Detalles99R Z
)99Z [
.99[ \
ToList99\ b
(99b c
)99c d
.99d e
OrderBy99e l
(99l m
s99m n
=>99o q
int99r u
.99u v
Parse99v {
(99{ |
s99| }
.99} ~
Numero	99~ Ñ
)
99Ñ Ö
)
99Ö Ü
.
99Ü á
ToList
99á ç
(
99ç é
)
99é è
;
99è ê
foreach:: 
(:: 
var:: 
item:: !
in::" $
Solicitudes::% 0
)::0 1
{;; 
item<< 
.<< 

Asignatura<< #
=<<$ %
_context<<& .
.<<. /
Asignaturas<</ :
.<<: ;
Find<<; ?
(<<? @
item<<@ D
.<<D E
CodigoAsignatura<<E U
)<<U V
;<<V W
item== 
.== 
Persona==  
===! "
_context==# +
.==+ ,
Personas==, 4
.==4 5
Find==5 9
(==9 :
item==: >
.==> ?
	IdPersona==? H
)==H I
;==I J
item>> 
.>> 
PeriodoAcademico>> )
=>>* +
_context>>, 4
.>>4 5
PeriodosAcademicos>>5 G
.>>G H
Find>>H L
(>>L M
item>>M Q
.>>Q R
	IdPeriodo>>R [
)>>[ \
;>>\ ]
foreach?? 
(?? 
var??  
item2??! &
in??' )
item??* .
.??. /
Detalles??/ 7
)??7 8
{@@ 
item2AA 
.AA 
InsumoAA $
=AA% &
_contextAA' /
.AA/ 0
InsumosAA0 7
.AA7 8
FindAA8 <
(AA< =
item2AA= B
.AAB C
CodigoInsumoAAC O
)AAO P
;AAP Q
}BB 
}CC 
returnDD 
newDD &
ConsultarSolicitudResponseDD 5
(DD5 6
SolicitudesDD6 A
)DDA B
;DDB C
}EE 
catchFF 
(FF 
	ExceptionFF 
eFF 
)FF 
{GG 
returnHH 
newHH &
ConsultarSolicitudResponseHH 5
(HH5 6
$"HH6 8
Error HH8 >
{HH> ?
eHH? @
.HH@ A
MessageHHA H
}HHH I
"HHI J
)HHJ K
;HHK L
}II 
}JJ 	
publicLL #
BuscarSolicitudResponseLL &
BuscarSolicitudLL' 6
(LL6 7
stringLL7 =
numeroLL> D
)LLD E
{MM 	
tryNN 
{OO 
varPP 
solicitudesresponsePP '
=PP( )
_contextPP* 2
.PP2 3
SolicitudesPP3 >
.PP> ?
IncludePP? F
(PPF G
dPPG H
=>PPI K
dPPL M
.PPM N
DetallesPPN V
)PPV W
.PPW X
ToListPPX ^
(PP^ _
)PP_ `
;PP` a
varQQ 
solicitudresponseQQ %
=QQ& '
solicitudesresponseQQ( ;
.QQ; <
FindQQ< @
(QQ@ A
sQQA B
=>QQC E
sQQF G
.QQG H
NumeroQQH N
==QQO Q
numeroQQR X
)QQX Y
;QQY Z
ifRR 
(RR 
solicitudresponseRR %
!=RR& (
nullRR) -
)RR- .
{SS 
solicitudresponseTT %
.TT% &

AsignaturaTT& 0
=TT1 2
_contextTT3 ;
.TT; <
AsignaturasTT< G
.TTG H
FindTTH L
(TTL M
solicitudresponseTTM ^
.TT^ _
CodigoAsignaturaTT_ o
)TTo p
;TTp q
solicitudresponseUU %
.UU% &
PersonaUU& -
=UU. /
_contextUU0 8
.UU8 9
PersonasUU9 A
.UUA B
FindUUB F
(UUF G
solicitudresponseUUG X
.UUX Y
	IdPersonaUUY b
)UUb c
;UUc d
solicitudresponseVV %
.VV% &
PeriodoAcademicoVV& 6
=VV7 8
_contextVV9 A
.VVA B
PeriodosAcademicosVVB T
.VVT U
FindVVU Y
(VVY Z
solicitudresponseVVZ k
.VVk l
	IdPeriodoVVl u
)VVu v
;VVv w
foreachWW 
(WW 
varWW  
itemWW! %
inWW& (
solicitudresponseWW) :
.WW: ;
DetallesWW; C
)WWC D
{XX 
itemYY 
.YY 
InsumoYY #
=YY$ %
_contextYY& .
.YY. /
InsumosYY/ 6
.YY6 7
FindYY7 ;
(YY; <
itemYY< @
.YY@ A
CodigoInsumoYYA M
)YYM N
;YYN O
}ZZ 
return[[ 
new[[ #
BuscarSolicitudResponse[[ 6
([[6 7
solicitudresponse[[7 H
)[[H I
;[[I J
}\\ 
else]] 
{^^ 
return__ 
new__ #
BuscarSolicitudResponse__ 6
(__6 7
$"__7 9
	No existe__9 B
"__B C
)__C D
;__D E
}`` 
}aa 
catchbb 
(bb 
	Exceptionbb 
ebb 
)bb 
{cc 
returndd 
newdd #
BuscarSolicitudResponsedd 2
(dd2 3
$"dd3 5
Error: dd5 <
{dd< =
edd= >
.dd> ?
Messagedd? F
}ddF G
"ddG H
)ddH I
;ddI J
}ee 
}ff 	
publichh '
ActualizarSolicitudResponsehh *
ActualizarEstadohh+ ;
(hh; <
stringhh< B
numerohhC I
,hhI J
stringhhK Q
estadohhR X
)hhX Y
{ii 	
tryjj 
{kk 
varll 
solicitudesresponsell '
=ll( )
_contextll* 2
.ll2 3
Solicitudesll3 >
.ll> ?
Includell? F
(llF G
dllG H
=>llI K
dllL M
.llM N
DetallesllN V
)llV W
.llW X
ToListllX ^
(ll^ _
)ll_ `
;ll` a
varmm 
solicitudresponsemm %
=mm& '
solicitudesresponsemm( ;
.mm; <
Findmm< @
(mm@ A
smmA B
=>mmC E
smmF G
.mmG H
NumerommH N
==mmO Q
numerommR X
)mmX Y
;mmY Z
ifnn 
(nn 
solicitudresponsenn %
!=nn& (
nullnn) -
)nn- .
{oo 
solicitudresponsepp %
.pp% &
Estadopp& ,
=pp- .
estadopp/ 5
;pp5 6
solicitudresponseqq %
.qq% &

Asignaturaqq& 0
=qq1 2
_contextqq3 ;
.qq; <
Asignaturasqq< G
.qqG H
FindqqH L
(qqL M
solicitudresponseqqM ^
.qq^ _
CodigoAsignaturaqq_ o
)qqo p
;qqp q
solicitudresponserr %
.rr% &
Personarr& -
=rr. /
_contextrr0 8
.rr8 9
Personasrr9 A
.rrA B
FindrrB F
(rrF G
solicitudresponserrG X
.rrX Y
	IdPersonarrY b
)rrb c
;rrc d
solicitudresponsess %
.ss% &
PeriodoAcademicoss& 6
=ss7 8
_contextss9 A
.ssA B
PeriodosAcademicosssB T
.ssT U
FindssU Y
(ssY Z
solicitudresponsessZ k
.ssk l
	IdPeriodossl u
)ssu v
;ssv w
foreachuu 
(uu 
varuu  
itemuu! %
inuu& (
solicitudresponseuu) :
.uu: ;
Detallesuu; C
)uuC D
{vv 
itemww 
.ww 
Insumoww #
=ww$ %
_contextww& .
.ww. /
Insumosww/ 6
.ww6 7
Findww7 ;
(ww; <
itemww< @
.ww@ A
CodigoInsumowwA M
)wwM N
;wwN O
}xx 
_contextzz 
.zz 
Solicitudeszz (
.zz( )
Updatezz) /
(zz/ 0
solicitudresponsezz0 A
)zzA B
;zzB C
_context{{ 
.{{ 
SaveChanges{{ (
({{( )
){{) *
;{{* +
return|| 
new|| '
ActualizarSolicitudResponse|| :
(||: ;
solicitudresponse||; L
)||L M
;||M N
}}} 
else~~ 
{ 
return
ÄÄ 
new
ÄÄ )
ActualizarSolicitudResponse
ÄÄ :
(
ÄÄ: ;
$str
ÄÄ; S
,
ÄÄS T
$str
ÄÄU `
)
ÄÄ` a
;
ÄÄa b
}
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
	Exception
ÉÉ 
e
ÉÉ 
)
ÉÉ 
{
ÑÑ 
return
ÖÖ 
new
ÖÖ )
ActualizarSolicitudResponse
ÖÖ 6
(
ÖÖ6 7
$"
ÖÖ7 9
Error: 
ÖÖ9 @
{
ÖÖ@ A
e
ÖÖA B
.
ÖÖB C
Message
ÖÖC J
}
ÖÖJ K
"
ÖÖK L
,
ÖÖL M
$str
ÖÖN `
)
ÖÖ` a
;
ÖÖa b
}
ÜÜ 
}
áá 	
public
ââ )
ActualizarSolicitudResponse
ââ *
AprobarSolicitud
ââ+ ;
(
ââ; <
string
ââ< B
numero
ââC I
)
ââI J
{
ää 	
try
ãã 
{
åå 
var
çç 
solicitudes
çç 
=
çç  !
_context
çç" *
.
çç* +
Solicitudes
çç+ 6
.
çç6 7
Include
çç7 >
(
çç> ?
d
çç? @
=>
ççA C
d
ççD E
.
ççE F
Detalles
ççF N
)
ççN O
.
ççO P
ToList
ççP V
(
ççV W
)
ççW X
;
ççX Y
var
éé 
solicitudresponse
éé %
=
éé& '
solicitudes
éé( 3
.
éé3 4
Find
éé4 8
(
éé8 9
s
éé9 :
=>
éé; =
s
éé> ?
.
éé? @
Numero
éé@ F
==
ééG I
numero
ééJ P
)
ééP Q
;
ééQ R
var
èè 
insumos
èè 
=
èè 
_context
èè &
.
èè& '
Insumos
èè' .
.
èè. /
ToList
èè/ 5
(
èè5 6
)
èè6 7
;
èè7 8
if
êê 
(
êê 
solicitudresponse
êê %
!=
êê& (
null
êê) -
)
êê- .
{
ëë 
solicitudresponse
íí %
.
íí% &
Estado
íí& ,
=
íí- .
$str
íí/ 9
;
íí9 :
solicitudresponse
ìì %
.
ìì% &
FechaEntrega
ìì& 2
=
ìì3 4
DateTime
ìì5 =
.
ìì= >
Now
ìì> A
.
ììA B
ToShortDateString
ììB S
(
ììS T
)
ììT U
;
ììU V
solicitudresponse
îî %
.
îî% &

Asignatura
îî& 0
=
îî1 2
_context
îî3 ;
.
îî; <
Asignaturas
îî< G
.
îîG H
Find
îîH L
(
îîL M
solicitudresponse
îîM ^
.
îî^ _
CodigoAsignatura
îî_ o
)
îîo p
;
îîp q
solicitudresponse
ïï %
.
ïï% &
Persona
ïï& -
=
ïï. /
_context
ïï0 8
.
ïï8 9
Personas
ïï9 A
.
ïïA B
Find
ïïB F
(
ïïF G
solicitudresponse
ïïG X
.
ïïX Y
	IdPersona
ïïY b
)
ïïb c
;
ïïc d
solicitudresponse
ññ %
.
ññ% &
PeriodoAcademico
ññ& 6
=
ññ7 8
_context
ññ9 A
.
ññA B 
PeriodosAcademicos
ññB T
.
ññT U
Find
ññU Y
(
ññY Z
solicitudresponse
ññZ k
.
ññk l
	IdPeriodo
ññl u
)
ññu v
;
ññv w
foreach
óó 
(
óó 
var
óó  
item
óó! %
in
óó& (
solicitudresponse
óó) :
.
óó: ;
Detalles
óó; C
)
óóC D
{
òò 
foreach
ôô 
(
ôô  !
var
ôô! $
item2
ôô% *
in
ôô+ -
insumos
ôô. 5
)
ôô5 6
{
öö 
if
õõ 
(
õõ  
item
õõ  $
.
õõ$ %
CodigoInsumo
õõ% 1
==
õõ2 4
item2
õõ5 :
.
õõ: ;
Item
õõ; ?
)
õõ? @
{
úú 
if
ùù  "
(
ùù# $
item
ùù$ (
.
ùù( )
Cantidad
ùù) 1
>
ùù2 3
item2
ùù4 9
.
ùù9 :
Cantidad
ùù: B
)
ùùB C
{
ûû  !
return
üü$ *
new
üü+ .)
ActualizarSolicitudResponse
üü/ J
(
üüJ K
$str
üüK j
,
üüj k
$str
üül z
)
üüz {
;
üü{ |
}
††  !
else
°°  $
{
¢¢  !
item
££$ (
.
££( )
Insumo
££) /
=
££0 1
item2
££2 7
;
££7 8
var
§§$ '
responseInsumo
§§( 6
=
§§7 8
_context
§§9 A
.
§§A B
Insumos
§§B I
.
§§I J
Find
§§J N
(
§§N O
item2
§§O T
.
§§T U
Item
§§U Y
)
§§Y Z
;
§§Z [
responseInsumo
••$ 2
.
••2 3
Cantidad
••3 ;
-=
••< >
item
••? C
.
••C D
Cantidad
••D L
;
••L M
_context
¶¶$ ,
.
¶¶, -
Insumos
¶¶- 4
.
¶¶4 5
Update
¶¶5 ;
(
¶¶; <
responseInsumo
¶¶< J
)
¶¶J K
;
¶¶K L
}
ßß  !
}
®® 
}
©© 
}
™™ 
_context
´´ 
.
´´ 
Solicitudes
´´ (
.
´´( )
Update
´´) /
(
´´/ 0
solicitudresponse
´´0 A
)
´´A B
;
´´B C
_context
¨¨ 
.
¨¨ 
SaveChanges
¨¨ (
(
¨¨( )
)
¨¨) *
;
¨¨* +
return
≠≠ 
new
≠≠ )
ActualizarSolicitudResponse
≠≠ :
(
≠≠: ;
solicitudresponse
≠≠; L
)
≠≠L M
;
≠≠M N
}
ÆÆ 
else
ØØ 
{
∞∞ 
return
±± 
new
±± )
ActualizarSolicitudResponse
±± :
(
±±: ;
$str
±±; S
,
±±S T
$str
±±U `
)
±±` a
;
±±a b
}
≤≤ 
}
≥≥ 
catch
¥¥ 
(
¥¥ 
	Exception
¥¥ 
e
¥¥ 
)
¥¥ 
{
µµ 
return
∂∂ 
new
∂∂ )
ActualizarSolicitudResponse
∂∂ 6
(
∂∂6 7
$"
∂∂7 9
Error: 
∂∂9 @
{
∂∂@ A
e
∂∂A B
.
∂∂B C
Message
∂∂C J
}
∂∂J K
"
∂∂K L
,
∂∂L M
$str
∂∂N `
)
∂∂` a
;
∂∂a b
}
∑∑ 
}
∏∏ 	
public
∫∫ 
class
∫∫ )
ActualizarSolicitudResponse
∫∫ 0
{
ªª 	
public
ºº )
ActualizarSolicitudResponse
ºº .
(
ºº. /
	Solicitud
ºº/ 8
	solicitud
ºº9 B
)
ººB C
{
ΩΩ 
	Solicitud
ææ 
=
ææ 
	solicitud
ææ %
;
ææ% &
Error
øø 
=
øø 
false
øø 
;
øø 
}
¿¿ 
public
¡¡ )
ActualizarSolicitudResponse
¡¡ .
(
¡¡. /
string
¡¡/ 5
mensaje
¡¡6 =
,
¡¡= >
string
¡¡? E
estado
¡¡F L
)
¡¡L M
{
¬¬ 
Error
√√ 
=
√√ 
true
√√ 
;
√√ 
Mensaje
ƒƒ 
=
ƒƒ 
mensaje
ƒƒ !
;
ƒƒ! "
Estado
≈≈ 
=
≈≈ 
estado
≈≈ 
;
≈≈  
}
∆∆ 
public
«« 
string
«« 
Estado
««  
{
««! "
get
««# &
;
««& '
set
««( +
;
««+ ,
}
««- .
public
»» 
bool
»» 
Error
»» 
{
»» 
get
»»  #
;
»»# $
set
»»% (
;
»»( )
}
»»* +
public
…… 
string
…… 
Mensaje
…… !
{
……" #
get
……$ '
;
……' (
set
……) ,
;
……, -
}
……. /
public
   
	Solicitud
   
	Solicitud
   &
{
  ' (
get
  ) ,
;
  , -
set
  . 1
;
  1 2
}
  3 4
}
ÀÀ 	
public
ÕÕ 
class
ÕÕ %
BuscarSolicitudResponse
ÕÕ ,
{
ŒŒ 	
public
œœ %
BuscarSolicitudResponse
œœ *
(
œœ* +
	Solicitud
œœ+ 4
	solicitud
œœ5 >
)
œœ> ?
{
–– 
Error
—— 
=
—— 
false
—— 
;
—— 
	Solicitud
““ 
=
““ 
	solicitud
““ %
;
““% &
}
”” 
public
’’ %
BuscarSolicitudResponse
’’ *
(
’’* +
string
’’+ 1
mensaje
’’2 9
)
’’9 :
{
÷÷ 
Error
◊◊ 
=
◊◊ 
true
◊◊ 
;
◊◊ 
Mensaje
ÿÿ 
=
ÿÿ 
mensaje
ÿÿ !
;
ÿÿ! "
}
ŸŸ 
public
⁄⁄ 
bool
⁄⁄ 
Error
⁄⁄ 
{
⁄⁄ 
get
⁄⁄  #
;
⁄⁄# $
set
⁄⁄% (
;
⁄⁄( )
}
⁄⁄* +
public
€€ 
string
€€ 
Mensaje
€€ !
{
€€" #
get
€€$ '
;
€€' (
set
€€) ,
;
€€, -
}
€€. /
public
‹‹ 
	Solicitud
‹‹ 
	Solicitud
‹‹ &
{
‹‹' (
get
‹‹) ,
;
‹‹, -
set
‹‹. 1
;
‹‹1 2
}
‹‹3 4
}
›› 	
public
ﬁﬁ 
class
ﬁﬁ (
ConsultarSolicitudResponse
ﬁﬁ /
{
ﬂﬂ 	
public
‡‡ (
ConsultarSolicitudResponse
‡‡ -
(
‡‡- .
List
‡‡. 2
<
‡‡2 3
	Solicitud
‡‡3 <
>
‡‡< =
solicitudes
‡‡> I
)
‡‡I J
{
·· 
Error
‚‚ 
=
‚‚ 
false
‚‚ 
;
‚‚ 
Solicitudes
„„ 
=
„„ 
solicitudes
„„ )
;
„„) *
}
‰‰ 
public
ÊÊ (
ConsultarSolicitudResponse
ÊÊ -
(
ÊÊ- .
string
ÊÊ. 4
mensaje
ÊÊ5 <
)
ÊÊ< =
{
ÁÁ 
Error
ËË 
=
ËË 
true
ËË 
;
ËË 
Mensaje
ÈÈ 
=
ÈÈ 
mensaje
ÈÈ !
;
ÈÈ! "
}
ÍÍ 
public
ÎÎ 
bool
ÎÎ 
Error
ÎÎ 
{
ÎÎ 
get
ÎÎ  #
;
ÎÎ# $
set
ÎÎ% (
;
ÎÎ( )
}
ÎÎ* +
public
ÏÏ 
string
ÏÏ 
Mensaje
ÏÏ !
{
ÏÏ" #
get
ÏÏ$ '
;
ÏÏ' (
set
ÏÏ) ,
;
ÏÏ, -
}
ÏÏ. /
public
ÌÌ 
List
ÌÌ 
<
ÌÌ 
	Solicitud
ÌÌ !
>
ÌÌ! "
Solicitudes
ÌÌ# .
{
ÌÌ/ 0
get
ÌÌ1 4
;
ÌÌ4 5
set
ÌÌ6 9
;
ÌÌ9 :
}
ÌÌ; <
}
ÓÓ 	
public
ÔÔ 
class
ÔÔ &
GuardarSolicitudResponse
ÔÔ -
{
 	
public
ÒÒ &
GuardarSolicitudResponse
ÒÒ +
(
ÒÒ+ ,
	Solicitud
ÒÒ, 5
	solicitud
ÒÒ6 ?
)
ÒÒ? @
{
ÚÚ 
Error
ÛÛ 
=
ÛÛ 
false
ÛÛ 
;
ÛÛ 
	Solicitud
ÙÙ 
=
ÙÙ 
	solicitud
ÙÙ %
;
ÙÙ% &
}
ıı 
public
˜˜ &
GuardarSolicitudResponse
˜˜ +
(
˜˜+ ,
string
˜˜, 2
mensaje
˜˜3 :
)
˜˜: ;
{
¯¯ 
Error
˘˘ 
=
˘˘ 
true
˘˘ 
;
˘˘ 
Mensaje
˙˙ 
=
˙˙ 
mensaje
˙˙ !
;
˙˙! "
}
˚˚ 
public
¸¸ 
bool
¸¸ 
Error
¸¸ 
{
¸¸ 
get
¸¸  #
;
¸¸# $
set
¸¸% (
;
¸¸( )
}
¸¸* +
public
˝˝ 
string
˝˝ 
Mensaje
˝˝ !
{
˝˝" #
get
˝˝$ '
;
˝˝' (
set
˝˝) ,
;
˝˝, -
}
˝˝. /
public
˛˛ 
	Solicitud
˛˛ 
	Solicitud
˛˛ &
{
˛˛' (
get
˛˛) ,
;
˛˛, -
set
˛˛. 1
;
˛˛1 2
}
˛˛3 4
}
ˇˇ 	
}
ÄÄ 
}ÅÅ 