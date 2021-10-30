%{
  /* Definition section */
   #include <stdio.h>
   #include <stdlib.h>
   #include "y.tab.h"

    int yyerror(char *errormsg);
    int yyparse();
%}
  
/* Rule Section */
%%
  
0 { return ZERO; }
  
1 { return ONE; }
  
.|\n { return 0;}
  
%%


int main(void)
{
     yyparse();
     return 0;
}

int yywrap(void)
{
     return 0;
}

int yyerror(char *errormsg)
{
      fprintf(stderr, "%s\n", "Sequence Rejected");
      exit(1);
}
