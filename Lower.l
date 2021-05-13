Lower [a-z]
Upper [A-Z]
Delimiter [ \t\n]

%%

{Lower} printf("%c",yytext[0]-32);
{Upper} printf("%c",yytext[0]+32);
%%
void main(){
printf("Enter the sentence \n");
yylex();
}
