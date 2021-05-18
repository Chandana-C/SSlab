%{
	#include<stdio.h>
	int count=0;
%}

%%
[a-zA-Z]+ {
if(yyleng>count)
{
	count=yyleng;
}
}

%%
void main()
{
	yylex();
	printf("Length of the largest word=%d\n",count);
}