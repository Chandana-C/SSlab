%{
#include<stdio.h>
int comcount=0;
%}
s "/"
a "*"
single \/\/.*
multiline {s}{a}+([^*]|\n)*{a}*{a}+{s}
%%
{single} {;comcount++;}
{multiline} {;comcount++;}
.|\n fprintf(yyout, "%s", yytext);
%%
void main()
{
yyin = fopen("inputcomments.c", "r");
yyout= fopen ("outputcomments.c", "w");
yylex();
printf("The no of comment lines are:%d\n", comcount);
}