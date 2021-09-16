/*lex code to accept a  valid email */ 
%{
#include<stdio.h>

%}
char [a-z.0-9_]+
subdomain[@][a-z]+
Domain ".com"

%%
{char}{subdomain}{Domain} {printf("valid email\n");};
.* {printf("not valid");};
%%
int main(){

yylex();
return 0;
}
int yywrap(void){
return 0;
}
