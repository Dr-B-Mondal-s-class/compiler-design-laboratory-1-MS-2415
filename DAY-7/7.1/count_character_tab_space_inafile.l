%{
    // Program to count character,tabs and whitespaces  in an input file
    int l=0,w=0, c=0,t=0;
%}
    
%%
\n { l++; }
\t {t++;}
([ ]) w++;
. c++;
%% 
int yywrap(void)
{
    return 1;
}
  
  
int main()
{
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Line count: %d\n",l);
    printf("Whitespaces count: %d\n",w);
    printf("Tabs count: %d\n",t);
    printf("Characters count: %d\n",c);
    return 0;
}
