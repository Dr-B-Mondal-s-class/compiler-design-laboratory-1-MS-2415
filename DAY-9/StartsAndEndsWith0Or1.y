%{
  /* Definition section */
  #include<stdio.h>
  #include <stdlib.h>
  int yylex(void);
  int yyerror(const char *s);
  
%}
  
%token ZERO ONE
  
/* Rule Section */
%%
  
r : s {printf("Sequence Accepted\n");}
;
  
s : n
| ZERO a
| ONE b
;
  
a : n a
| ZERO
;
  
b : n b
| ONE
;
  
n : ZERO
| ONE
;
  
