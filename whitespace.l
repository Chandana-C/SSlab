%{
#include<stdio.h>
%}
%%
[\n\t ' '] {};
%%
int main()
{

yylex();
}
int yywrap()
{
return 1;
}