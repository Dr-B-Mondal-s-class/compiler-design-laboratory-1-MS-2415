%{
//program to show whether a string contains alphabets or not

%}

alphabets [A-Za-z]

%%

{alphabets}+ {printf("Only alphabets");}

.* {printf("Characters other than alphabets"); }

%%

int main(){

yylex();

return 0;

}

int yywrap(void){

return 0;
}
