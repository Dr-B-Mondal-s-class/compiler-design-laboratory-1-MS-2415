%{
    // Program to find number of
    // lexemes
    int nids = 0, nkws = 0, nops = 0, nfls = 0, nsep = 0, nint = 0, n_total = 0;
%}

keywords "while"|"if"|"else"|"int"|"float"
id [a-zA-Z_][a-zA-Z0-9_]*
operators "<="|"=="|"="|"++"|"-"|"*"|"+"
seperators [(){}|, ;]
floats [0-9]*"."[0-9]+
integers [0-9]+

%%
{keywords} {nkws++; n_total++;};
{id} {nids++; n_total++;};
{operators} {nops++; n_total++;};
{seperators} {nsep++; n_total++;};
{floats} {nfls++; n_total++;};
{integers} {nint++; n_total++;};
\n {return 0;}
. ;
%%

int main() {
    yylex();
    printf("\nNo. of identifiers = %d\n", nids);
    printf("No. of keywords = %d\n", nkws); 
    printf("No. of operators = %d\n", nops); 
    printf("No. of seperators = %d\n", nsep); 
    printf("No. of floats = %d\n", nfls);
    printf("No. of integers = %d\n", nint); 
    printf("Total no. of lexemes = %d\n", n_total); 
 
}
int yywrap(void)
{
    return 0;
}
