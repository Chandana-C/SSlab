%{
int vcount=0,ccount=0;
%}

%%
[aeiouAEIOU] vcount++;
[a-zA-Z] ccount++;
. ;

%%
void main()
{
	printf("enter the input and press ctrl D to exit\n");
	yylex();
	printf("The vowel count is %d\n",vcount);
	printf("The consonent count is %d\n",ccount);
}
