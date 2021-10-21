%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
[a-z]+  printf("LOWER CASE");
[A-Z]+  printf("UPPER CASE");
[A-Za-z]+ printf("Both case present");
.* {printf("Character other than alphabets.");}
%%

int main() {
    printf("THIS PROGRAMM IS ABOUT LETTERCASE\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
