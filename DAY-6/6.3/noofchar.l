%{
#include<stdio.h>

int ch = 0;
%}

%%

.   {  ch++; }

%%
int yywrap(void)
{
	return 1;
}

int main(){
	yyin = fopen("ip.txt", "r");
	yylex();
	printf("No. of characters:%d\n\n",ch);
	return 0;
}
