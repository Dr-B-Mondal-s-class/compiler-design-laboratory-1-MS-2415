%{
	// write a lex program to determine whether input is a valid operator or not
%}

protocol "https"|"http"|"ftp"
domain "com"|"in"
domain_name [a-zA-Z0-9]+
url ({protocol}:\/\/"www".{domain_name}\.{domain})|("www"\.{domain_name}\.{domain})

%%
{url} {printf("valid url");}
.+ {printf("invalid url");}
%%

int main(){
	printf("enter url:-");
	yylex();
}

int yywrap(void){
	return 0;
}
