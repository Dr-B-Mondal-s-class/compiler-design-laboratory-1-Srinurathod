%{
 int flag = 0;
%}
%%
[\n] {
    flag==0?printf("Only alphabets present\n"):
    printf("Other characters are also present\n");
    flag = 0;
}
  
[^a-zA-Z] {flag = 1;}
. {}
%%
int main() {
    printf("Lab Work done by RATHOD SRINIVAS 2019UGCS059R\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
