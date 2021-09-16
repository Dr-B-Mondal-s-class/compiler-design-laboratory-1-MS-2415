%{
  //lex program to check valid mobile number
%}
  
number [1-9][0-9]{9}
c_code "+91 "

%%
  
{c_code}{number} {printf("\nMobile Number Valid\n");};
  
.+ {printf("\nMobile Number Invalid\n");};
  
%%
  

int main() 
{
    printf("\nEnter Mobile Number : ");
    yylex();
    printf("\n");

}
int yywrap()
{
	return 0;
}
