/*lex program to count number of words*/
%{
#include<stdio.h>
#include<string.h>
int i = 0;
%}

/* Rules Section*/
%%
([a-zA-Z0-9])* {i++;} /* Rule for counting
						number of words*/


%%

int yywrap(void){}

int main()
{
	// The function that starts the analysis
	yylex();
	printf("%d\n", i);
}
