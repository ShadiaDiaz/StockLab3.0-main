�
BC:\Users\norma\Desktop\StockLab3.0-main-main\Entity\Asignaturas.cs
	namespace 	
Entity
 
{ 
public 

class 
Asignaturas 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 '
)		' (
]		( )
[

 	
Required

	 
(

 
ErrorMessage

 
=

  
$str

! 8
)

8 9
]

9 :
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=& '
$str( U
)U V
]V W
public 
string 
Codigo 
{ 
get "
;" #
set$ '
;' (
}) *
[
Column
(
TypeName
=
$str
)
]
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) K
)K L
]L M
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) L
)L M
]M N
public 
string 
Horario 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
=C:\Users\norma\Desktop\StockLab3.0-main-main\Entity\Class1.cs
	namespace 	
Entity
 
{ 
public 

class 
Class1 
{ 
} 
} �
DC:\Users\norma\Desktop\StockLab3.0-main-main\Entity\DetalleInsumo.cs
	namespace 	
Entity
 
{ 
public 

class 

{ 
[		 	
Key			 
]		 
[

 	
Column

	 
(

 
TypeName

 
=

 
$str

 '
)

' (
]

( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=& '
$str( U
)U V
]V W
public
string

{
get
;
set
;
}
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
public 
string 
Fecha 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str  
)  !
]! "
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
int 
Cantidad 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str '
)' (
]( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=& '
$str( `
)` a
]a b
public 
string 
CodigoInsumo "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
	NotMapped	 
] 
public 
Insumo 
Insumo 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
=C:\Users\norma\Desktop\StockLab3.0-main-main\Entity\Insumo.cs
	namespace 	
Entity
 
{ 
public 

class 
Insumo 
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 '
)		' (
]		( )
[

 	
StringLength

	 
(

 
$num

 
,

 
ErrorMessage

 %
=

& '
$str

( U
)

U V
]

V W
public 
string 
Item 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[
Required
(
ErrorMessage
=
$str
)
]
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) F
)F G
]G H
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=& '
$str( ?
)? @
]@ A
public 
string 
Marca 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str  
)  !
]! "
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ;
); <
]< =
public 
int 
Cantidad 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str  
)  !
]! "
[ 	
Required	 
( 
ErrorMessage 
=  
$str! >
)> ?
]? @
public 
int 
StockMinimo 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
GC:\Users\norma\Desktop\StockLab3.0-main-main\Entity\PeriodoAcademico.cs
	namespace 	
Entity
 
{ 
public 

class 
PeriodoAcademico !
{ 
[ 	
Key	 
] 
[		 	
Column			 
(		 
TypeName		 
=		 
$str		 &
)		& '
]		' (
public

 
string

 
Codigo
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
) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[
Column
(
TypeName
=
$str
)
]
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage #
=$ %
$str& <
)< =
]= >
public 
string 
Periodo 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Column	 
( 
TypeName 
= 
$str  
)  !
]! "
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
	MaxLength	 
( 
$num 
, 
ErrorMessage "
=# $
$str% 8
)8 9
]9 :
public 
int 
Corte 
{ 
get 
; 
set  #
;# $
}% &
} 
} �4
>C:\Users\norma\Desktop\StockLab3.0-main-main\Entity\Persona.cs
	namespace 	
Entity
 
{ 
public 

class 
Persona 
{ 
[		 	
Key			 
]		 
[

 	
Column

	 
(

 
TypeName

 
=

 
$str

 (
)

( )
]

) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! @
)@ A
]A B
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) I
)I J
]J K
public
string
Identificacion
{
get
;
set
;
}
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) A
)A B
]B C
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) C
)C D
]D E
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
DataType	 
( 
DataType 
. 
EmailAddress '
,' (
ErrorMessage( 4
=5 6
$str7 Q
)Q R
]R S
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str  
)  !
]! "
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
EdadValidacion	 
( 
ErrorMessage $
=% &
$str' 9
)9 :
]: ;
public 
int 
Edad 
{ 
get 
; 
set "
;" #
}$ %
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
SexoValidacion	 
( 
ErrorMessage $
=% &
$str' <
)< =
]= >
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) E
)E F
]F G
public   
string   
Sexo   
{   
get    
;    !
set  " %
;  % &
}  ' (
public!! 
Usuario!! 
Usuario!! 
{!!  
get!!! $
;!!$ %
set!!& )
;!!) *
}!!+ ,
["" 	
	NotMapped""	 
]"" 
public## 
List## 
<## 
	Solicitud## 
>## 
	Solicitud## (
{##) *
get##+ .
;##. /
set##0 3
;##3 4
}##5 6
public&& 
class&& 
SexoValidacion&& #
:&&$ %
ValidationAttribute&&& 9
{'' 	
	protected(( 
override(( 
ValidationResult(( /
IsValid((0 7
(((7 8
object((8 >
value((? D
,((D E
ValidationContext((F W
validationContext((X i
)((i j
{)) 
if** 
(** 
(** 
value** 
.** 
ToString** #
(**# $
)**$ %
.**% &
ToLower**& -
(**- .
)**. /
==**0 2
$str**3 >
)**> ?
||**@ B
(**C D
value**D I
.**I J
ToString**J R
(**R S
)**S T
.**T U
ToLower**U \
(**\ ]
)**] ^
==**_ a
$str**b l
)**l m
)**m n
{++ 
return,, 
ValidationResult,, +
.,,+ ,
Success,,, 3
;,,3 4
}-- 
else.. 
{// 
return00 
new00 
ValidationResult00 /
(00/ 0
ErrorMessage000 <
)00< =
;00= >
}11 
}22 
}33 	
public55 
class55 
EdadValidacion55 #
:55$ %
ValidationAttribute55& 9
{66 	
	protected77 
override77 
ValidationResult77 /
IsValid770 7
(777 8
object778 >
value77? D
,77D E
ValidationContext77F W
validationContext77X i
)77i j
{88 
if99 
(99 
(99 
(99 
int99 
.99 
Parse99 
(99  
value99  %
.99% &
ToString99& .
(99. /
)99/ 0
)990 1
>992 3
$num994 6
)996 7
||998 :
(99; <
int99< ?
.99? @
Parse99@ E
(99E F
value99F K
.99K L
ToString99L T
(99T U
)99U V
)99V W
<99X Y
$num99Z ]
)99] ^
)99^ _
)99_ `
{:: 
return;; 
ValidationResult;; +
.;;+ ,
Success;;, 3
;;;3 4
}<< 
else== 
{>> 
return?? 
new?? 
ValidationResult?? /
(??/ 0
ErrorMessage??0 <
)??< =
;??= >
}@@ 
}AA 
}BB 	
}CC 
}DD �<
@C:\Users\norma\Desktop\StockLab3.0-main-main\Entity\Solicitud.cs
	namespace 	
Entity
 
{ 
public 

class 
	Solicitud 
{		 
[

 	
Key

	 
]

 
[ 	
Column	 
( 
TypeName 
= 
$str '
)' (
]( )
public 
string 
Numero 
{ 
get "
;" #
set$ '
;' (
}) *
[
FechaValidation
(
ErrorMessage
=
$str
)
]
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 7
)7 8
]8 9
[ 	
Column	 
( 
TypeName 
= 
$str %
)% &
]& '
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
FechaEntrega "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) ;
); <
]< =
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 6
)6 7
]7 8
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) ?
)? @
]@ A
public 
string 
Hora 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
[ 	
Required	 
( 
ErrorMessage 
=  
$str! @
)@ A
]A B
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) I
)I J
]J K
public 
string 
Monitor 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Column	 
( 
TypeName 
= 
( 
$str !
)! "
)" #
]# $
public 
int 
CantidadInsumos "
{# $
get% (
;( )
set* -
;- .
}/ 0
[   	
Column  	 
(   
TypeName   
=   
$str   '
)  ' (
]  ( )
[!! 	
Required!!	 
(!! 
ErrorMessage!! 
=!!  
$str!!! F
)!!F G
]!!G H
["" 	
StringLength""	 
("" 
$num"" 
,"" 
ErrorMessage"" %
=""& '
$str""( f
)""f g
]""g h
public## 
string## 
CodigoAsignatura## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
[$$ 	
Column$$	 
($$ 
TypeName$$ 
=$$ 
$str$$ (
)$$( )
]$$) *
[%% 	
Required%%	 
(%% 
ErrorMessage%% 
=%%  
$str%%! @
)%%@ A
]%%A B
[&& 	
StringLength&&	 
(&& 
$num&& 
,&& 
ErrorMessage&& &
=&&' (
$str&&) I
)&&I J
]&&J K
public'' 
string'' 
	IdPersona'' 
{''  !
get''" %
;''% &
set''' *
;''* +
}'', -
[)) 	
Column))	 
()) 
TypeName)) 
=)) 
$str)) '
)))' (
]))( )
public** 
string** 
	IdPeriodo** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
[,, 	
Column,,	 
(,, 
TypeName,, 
=,, 
$str,, %
),,% &
],,& '
public-- 
DateTime-- 
SolicitudFecha-- &
{--' (
get--) ,
;--, -
set--. 1
;--1 2
}--3 4
[.. 	
	NotMapped..	 
].. 
public// 
Persona// 
Persona// 
{//  
get//! $
;//$ %
set//& )
;//) *
}//+ ,
[00 	
	NotMapped00	 
]00 
public11 
Asignaturas11 

Asignatura11 %
{11& '
get11( +
;11+ ,
set11- 0
;110 1
}112 3
[22 	
	NotMapped22	 
]22 
public33 


{33+ ,
get33- 0
;330 1
set332 5
;335 6
}337 8
[55 	
	NotMapped55	 
]55 
public66 
PeriodoAcademico66 
PeriodoAcademico66  0
{661 2
get663 6
;666 7
set668 ;
;66; <
}66= >
public99 
List99 
<99 

>99! "
Detalles99# +
{99, -
get99. 1
;991 2
set993 6
;996 7
}998 9
public;; 
class;; 
FechaValidation;; $
:;;% &
ValidationAttribute;;' :
{<< 	
	protected== 
override== 
ValidationResult== /
IsValid==0 7
(==7 8
object==8 >
value==? D
,==D E
ValidationContext==F W
validationContext==X i
)==i j
{>> 
var?? 
fecha?? 
=?? 
DateTime?? $
.??$ %
Now??% (
;??( )
TimeSpanAA 
tsAA 
=AA 
DateTimeAA '
.AA' (
ParseAA( -
(AA- .
valueAA. 3
.AA3 4
ToStringAA4 <
(AA< =
)AA= >
)AA> ?
-AA@ A
fechaAAB G
;AAG H
varBB 
daysBB 
=BB 
tsBB 
.BB 
	TotalDaysBB '
;BB' (
ifCC 
(CC 
daysCC 
<CC 
$numCC 
)CC 
{CC 
returnDD 
newDD 
ValidationResultDD /
(DD/ 0
ErrorMessageDD0 <
)DD< =
;DD= >
}EE 
elseFF 
{FF 
returnGG 
ValidationResultGG +
.GG+ ,
SuccessGG, 3
;GG3 4
}HH 
}II 
}JJ 	
}KK 
}LL �
>C:\Users\norma\Desktop\StockLab3.0-main-main\Entity\Usuario.cs
	namespace 	
Entity
 
{ 
public 

class 
Usuario 
{ 
[		 	
Key			 
]		 
[

 	
Column

	 
(

 
TypeName

 
=

 
$str

 (
)

( )
]

) *
public 
string 
User 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public
string
Password
{
get
;
set
;
}
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
	Apellidos 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
Tipo 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
	NotMapped	 
] 
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Column	 
( 
TypeName 
= 
$str '
)' (
]( )
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Column	 
( 
TypeName 
= 
$str (
)( )
]) *
public 
string 
	IdPersona 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} 