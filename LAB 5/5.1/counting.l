%{
    //to count numbers, digits, letters, 
    //words, spaces and operators
    int l=0, d=0, n=0, w=0, sp=0, o=0;
%}

sig ""|"+"|"-"
dig [0-9]
let [a-zA-Z]
op "+"|"-"|"*"|"/"|"%"|"&&"|"||"|"!"

%%

" " sp++;
{let}[\n.!?,;:] {w++; l++;}
{let}[" "] {w++; l++; sp++;}
{let} {l++;}
{dig} {d++;}
{sig}+{dig}[\n,?!:;] {n++; d++;}
{sig}+{dig}[" "] {n++; d++; sp++;}
{sig}+{dig}"."{dig}[\n,?!;:] {n++; d++;}
{sig}+{dig}"."{dig}+[" "] {n++; d++; sp++;}
{op} {o++;}
\n {
    printf("--------------------\n");
    printf("Letters Count: %d\n", l);
    printf("Words Count: %d\n", w);
    printf("Digits Count: %d\n", d);
    printf("Numbers Count: %d\n", n);
    printf("Spaces Count: %d\n", sp);
    printf("Operators Count: %d\n", o);
    l=0,d=0,n=0,w=0,sp=0, o=0;
}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){

}
