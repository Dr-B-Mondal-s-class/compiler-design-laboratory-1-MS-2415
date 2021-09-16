%{
#define A 100
%}
WS [ \t]+
letter [A-Za-z]
digit [0-9]
op_plus "+"

%%
[0-9]+ {printf("digit");};
%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}

