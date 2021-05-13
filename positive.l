%{
#include<stdio.h>
%}
eol \n
Sign  [+-]?
Digit  [0-9]+
Exp  ([eE]{Sign}{Digit}) 

%%
{eol} return 0;
\+? {Digit}  printf(“Number is positive”);
\-{Digit}  printf(“Number is negative”);
{Sign}{Digit}?\.{Digit}?  printf(“Number is Real”);
{Sign}{Digit}(\.{Digit}?)?{Exp}  printf(“Number is exponential”);
%%

 void main()
        {
	printf(“Enter the number and press ctrl D);
              yylex();  }
