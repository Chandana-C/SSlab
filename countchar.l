%{
    #include<stdio.h>
    int count=0;
%}


%%

[a-zA-Z] count++;
%%
void main()
{
    printf("enter string:\n");
    yylex();
    printf("number of characters is: %d",count);
}