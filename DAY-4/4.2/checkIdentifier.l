%{
%}

identifier [a-zA-Z_][a-zA-Z0-9_]*
keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while] 

%%
{keyword} {printf("%s :- Keyword",yytext);}
{identifier} {printf("%s :- Valid identifier",yytext);}
.* {printf("%s :- Invalid Identifier",yytext);}
%%

main()
{
	yylex();
}
yywrap(void)
{
	return 0;
}
