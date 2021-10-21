%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[0-9]+ {printf("Digit only");};
[A-Za-z]+ {printf("Letter only");};
^[A-Za-z]+|[0-9]+|[A-Za-z]+[0-9]*|[0-9]+[A-Za-z]* {printf("Invalid Format");};
%%

int main() {
    printf("THIS PROGRAMM IS ABOUT TO LETTERS AND DIGITS\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
