%{
    // Macros for C program
    #include <stdio.h>
%}

%%
[\n\t]+ {fprintf(yyout,"");}
[ ]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}
%%
int main() {
    yyin = fopen("sample.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
}
int yywrap(void)
{
    return 1;
}
