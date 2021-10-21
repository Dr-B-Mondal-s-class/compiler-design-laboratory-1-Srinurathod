%{
  // C program
%}

keyword (break|auto|else|long|if|char|float|short|unsigned|const|for|signed|void|int|main)
%%
{keyword}+ {printf("%s is a keyword",yytext);};
.+ {printf("%s is not a keyword",yytext);};
%%

int main() {
    printf("THIS IS THE PROGRAMME FOR KEYWORD\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
