%{
  #include<stdio.h>
  int comcount=0;
%}
%s COMMENT
%%
"/*" {BEGIN(COMMENT);}
<COMMENT>"*/" {BEGIN(0);comcount++;}
<COMMENT>. {;}
"//".* {; comcount++;}
.|\n {fprintf(yyout, "%s", yytext);}
%%
void main()
{ 
              yyin = fopen("inputcomments.c","r");
              yyout = fopen("outputcomments.c","w");
              yylex();
              printf("The no. of comment lines are:%d\n", comcount);
}