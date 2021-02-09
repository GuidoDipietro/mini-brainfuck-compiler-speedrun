%{
#include <stdio.h>
#define ARR_SIZE 1000
int yylex();
void yyerror(char* s);

char* arr;
//char* arr = NULL; shouldve been
%}

%%

line	:	op
		|	line op
;

op	:	'+'		{++(*arr);}
	|	'-'		{--(*arr);}
	|	'.'		{putchar(*arr);}
	|	','		{*arr = getchar();}
	|	'>'		{arr++;}
	|	'<'		{arr--;}

%%

void init_arr(){
	for(int i=0; i<ARR_SIZE; (arr[i]=0, i++));
}

void yyerror(char* s){
	fprintf(stderr, "%s\n", s);
}

int main(){
	arr = malloc(ARR_SIZE);
	init_arr();
	// arr = calloc(ARR_SIZE, 1); shouldve been, to save the init_arr() step
	// where's the free? lol nice leacc
	return yyparse();
}
