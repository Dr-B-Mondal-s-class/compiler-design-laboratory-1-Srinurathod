%{
    # include <string.h>
    # include <stdlib.h>

    char c;
    char* type;
%}

op1 "+"|"-"|"*"|"/"|"%"|"/"|">>"|"<<"
op2 "!"|"&&"|"||"


%%
{op1}+ {printf("%s is valid arithmetic operator. ",yytext);
c = *yytext;
switch(c){
    case '+':
    type = "Addition";
    break;
    case '-':
    type = "Subtraction";
    break;
    case '*':
    type = "Multiplication";
    break;
    case '/':
    type = "Division";
    break;
    case '%':
    type = "Modulo";
    break;
    case '>':
    type = "Right Shift";
    break;
    case '<':
    type = "Left Shift";
    break;
}
printf("Operation: %s",type);
}
{op2}+ {printf("%s is valid logical operator. ",yytext);
c = *yytext;
switch(c){
    case '!':
    type = "Logical Not";
    break;
    case '&':
    type = "Logical And";
    break;
    case '|':
    type = "Logical Or";
    break;
}
printf("Operation: %s",type);
}
.+ {printf("Not a valid operator.");}
%%

int main(){
    printf("THIS PROGRAMME IS ABOUT OPERATORS\n");
    yylex();
}
int yywrap(){

}
