%{
    // Program to find number of
    // lexemes
    int n_total = 0;
%}

keywords "while"|"if"|"else"|"int"|"float"
id [a-zA-Z_][a-zA-Z0-9_]*
operators "<="|"=="|"="|"++"|"-"|"*"|"+"
seperators [(){}|, ;]
floats [0-9]*"."[0-9]+
integers [0-9]+

%%
{keywords} {n_total++;};
{id} {n_total++;};
{operators} {n_total++;};
{seperators} {n_total++;};
{floats} {n_total++;};
{integers} {n_total++;};
\n {return 0;}
. ;
%%

int main() {
    yyin = fopen("sample.txt", "r");
    yylex();
    printf("Total no. of lexemes = %d\n", n_total); 
 
}
int yywrap(void)
{
    return 1;
}
