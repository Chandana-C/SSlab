%{
int count=0;
%}
eol \n
Letter [a-zA-Z_]
Digit [0-9]

%%
{eol} return 0;

({Letter})({Letter}|{Digit})* count++;
%%

void main(){
printf("Enter the sentence\n");
yylex();
printf("The no. of identifiers are : %d", count);
}