%{
   // C Program
%}

keyword (break|auto|else|long|if|char|float|short|unsigned|const|for|signed|void|int|main)
identifier [a-zA-Z_][a-zA-Z0-9_]*
%%
{keyword}+ printf("Keyword");
{identifier} printf("Valid Identifier");
.+ printf("Invalid Identifier");

%%

int main() {
    printf("THIS PROGRAMME IS ABOUT IDENTIFIERS\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
