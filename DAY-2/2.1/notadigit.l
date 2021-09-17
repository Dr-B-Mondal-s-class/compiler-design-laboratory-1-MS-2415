%{
#define A 100
%}
WS [ \t]+
letter [A-Za-z]
digit [0-9]
op_plus "+"

%%
^[a-zA-Z0-9]([a-zA-Z0-9])+ {printf("not digit");};
 [0-9]+ {printf("digit");};
%%

 main() {
    yylex();
}

 yywrap(void) {
    return 0;
}
