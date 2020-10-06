%{
#include "y.tab.h"
int yywrap();
void yyerror(char* s);
%}

%%

[\+-\.,<>]	{return yytext[0];}
\/\/.*		{;}
[ \t\n]		{;}

%%

int yywrap(){
	return 1;
}
