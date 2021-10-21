%{
    // Macros for C program
    #include <stdio.h>
    int ch = 0;
%}

%%
. {ch++;};

%%
int yywrap(void)
{
    return 1;
}

int main() {
    yyin = fopen("sample.txt", "r");
    yylex();
    printf("No. of Characters: %d\n\n", ch);
    return 0;
}
