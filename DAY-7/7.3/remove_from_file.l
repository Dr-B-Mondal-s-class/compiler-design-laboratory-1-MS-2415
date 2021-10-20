%{
//macros
%}
%%
[\n\t]+ {fprintf(yyout,"");}
[ ]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}
%%
int main () {
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
}
int yywrap()
{
 return 1;
}
