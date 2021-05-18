%{
#include<stdio.h>
%}

%%
.* fprintf(yyout,"%s",yytext);
%%
void main()
{
yyin = fopen("inputcopy.c", "r");
yyout= fopen ("outputcopy.c", "w");
yylex();
fclose(yyout);
fclose(yyin);
}