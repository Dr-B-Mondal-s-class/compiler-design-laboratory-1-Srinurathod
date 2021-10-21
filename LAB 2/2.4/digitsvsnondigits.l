%{
 // Digit vs Non Digit
%}

WS [ \t]+
letter [A-Za-z]
digit [0-9]
op_plus "+"

%%
[0-9]  printf("Digit");
^[^0-9]|[0-9]*[a-zA-Z]*|[0-9]*|[a-zA-Z]*[0-9]*  printf("Not a digit");
.;
%%

int main() {
    printf("THIS PROGRAMM IS ABOUT DIGITS VS NONDIGITS\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
