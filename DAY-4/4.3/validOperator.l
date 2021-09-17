%{

%}

operators "+"|"-"|"*"|"/"|">"|"<"|"="|">="|"<="|"=="|"||"|"&&"|"!"
operator ({operators})

%%
{operator} {printf("Valid Operator\n");}
.* {printf("Invalid Operator\n");}

%%

main()
{
	yylex();
	
}
yywrap(void)
{
	return 0;
}
