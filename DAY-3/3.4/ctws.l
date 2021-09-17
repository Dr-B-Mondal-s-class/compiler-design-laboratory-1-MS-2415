%{
//program to print characters,tab and whitespace count
#include<stdio.h>
#include<conio.h>
int ch=0,tab=0,sp=0;
%}

%%
([ ]) sp++;

\t tab++;

. ch++;
\n {
	printf("Character Count:%d\n",ch);
	printf("Tabs Count:%d\n",tab);
	printf("whitespace Count:%d\n",sp);
	int ch=0,tab=0,sp=0;
  
}

%%

int main(){
yylex();
return 0;
}

int yywrap(void){
	return 0;
}
