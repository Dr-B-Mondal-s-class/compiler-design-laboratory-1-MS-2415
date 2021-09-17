%{
%}

sign "+"|"-"|""
int ({sign}[0-9]+)
float ({sign}[0-9]+.[0-9]+)

%%
{int} {printf("Integer\n");}
{float} {printf("Floating Point Number\n");}
.* {printf("Invalid Input\n");}
%%

main(){

	yylex();
}

yywrap(void){

	return 0;
}

