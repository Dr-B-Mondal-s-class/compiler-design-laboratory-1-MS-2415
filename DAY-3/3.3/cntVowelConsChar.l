%{
 int cnt_vowels=0;
 int cnt_cons=0;
 int cnt_others=0;
%}

vowel [aeiouAEIOU]
consonant [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]

%%
{vowel} {cnt_vowels++;}
{consonant} {cnt_cons++;}
. {cnt_others++;}
\n {return 0;}
%%

main(){

yylex();

printf("Number of vowels entered: %d\n",cnt_vowels);
printf("Number of consonant entered: %d\n",cnt_cons);
printf("Number of other characters entered: %d\n",cnt_others);
}

yywrap(void)
{
  return 0;
}
