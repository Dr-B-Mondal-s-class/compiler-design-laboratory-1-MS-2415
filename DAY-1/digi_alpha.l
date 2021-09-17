%{
#define A 100
%}
WS [ \t]+
letter [A-Za-z]
digit [0-9]
op_plus "+"
%%)
[0-9]+ {printf("digit");};
^[A-Za-z]+ {printf("letter");};
%%

main() {
    yylex();
  }
    yywrap(void) 
 {
    return 0;
}

