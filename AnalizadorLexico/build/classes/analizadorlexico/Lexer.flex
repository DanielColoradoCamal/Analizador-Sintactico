package analizadorlexico;
import static analizadorlexico.Tokens.*;
%%
%class Lexer
%type Tokens
L = [a-zA-Z_]
D = [0-9]
WHITE=[ \t\r\n]
%{
public String lexeme;
%}
%%
int |
char |
float |
double |
if |
else |
do |
while |
for |
short |
long |
extern |
static |
default | 
continue |
break |
register |
sizeof |
typedef |
const |
goto |
return |
auto |
signed |
void |
struct |
union |
switch |
unsigned |
volatile |
case |
enum |
while {lexeme=yytext(); return PalabraReservada;}
{WHITE} {/*Ignore*/}


"=" {return Asignacion;}
"+" {return Suma;}
"*" {return Multiplicacion;}
"-" {return Resta;}
"/" {return Division;}
"%" {return Modulo;}
"++" {return Incremento;}
"--" {return Decremento;}
">" {return MayorQue;}
">=" {return MayoroIgualQue;}
"<" {return MenorQue;}
"<=" {return MenoroIgualQue;}
"==" {return Igual;}
"&&" {return LogicoAnd;}
"||" {return LogicoOr;}
"!=" {return LogicoNoIgual;}
"!" {return LogicoNo;}




{L}({L}|{D})* {lexeme=yytext(); return Identificador;}
 ("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
. {return ERROR;}