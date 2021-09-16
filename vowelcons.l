%{
// macros of c program
%}

vowel [aeiouAEIOU]
consonant [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]

%%
{vowel}+ {printf("contains vowel(s)");}
{consonant}+ {printf("contains consonant(s)");}
{vowel}+{consonant}+ {printf("contains both vowel(s) and consonant(s)");}
.+ {printf("contains undefined characters");}
%%

int main()
{
yylex();
}

int yywrap(void){
return 0;
}


