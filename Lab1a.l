%{ 
#include<stdio.h> 
#include<string.h> 
int nooper=0, nooperand=0, i=0, j=0, valid=0;
 char opnd[10][10], opert[10][10];
%}
%% 
"(" { valid++;} 
")" { 
valid--; 
if(valid<0)yyF();
} 
"+"|"*" {nooper++; strcpy(opert[i],yytext);
i++;
}
[0-9]+ {
nooperand++; 
strcpy(opnd[j],yytext);
j++;
} 
[^+*]"("[^0-9] yyF(); 
[+*]")" yyF(); 
%%
int yyF() 
{ 
	printf("Invalid"); 
	exit(0); 
}

int main() 
{	int k; 
	printf("Enter the expression and press ctrl+d to exit\n"); 
	yylex();
	if(valid==0 &&(nooperand-nooper)==1) 
	{ 
		printf("The exp is valid\n");
 		printf("The operator are\n");
 		for(k=0;k<i;k++) 
			printf("%s\n",opert[k]); 
		printf("The operands are\n"); 
		for(k=0;k<j;k++) 
			printf("%s\n",opnd[k]); 
	} 
	else
	{ 
		printf("The exp is invalid\n"); 
		return 0; 
	} 
}