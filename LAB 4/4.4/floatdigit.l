%{
   // C Program
%}

sig "+"|"-"|""
dig [0-9]
fl {dig}+"."+{dig}+

%%
{sig}+{fl}+ {printf("FLOAT");}
{sig}+{dig}+ {printf("INTEGER");}
.* {printf("INVALID");}
%%

int main() {
    printf("THIS PROGRAMME IS ABOUT FLOAT DIGIT\n");
    yylex();
}

int yywrap(void) {
    return 0;
}
