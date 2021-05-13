%{
    #include<stdio.h>
%}

%%

[a-zA-Z] printf("%s", yytext);;
%%
void main()
{
    printf("Enter the string and ctrl+d to exit\n");
    yylex();   
}