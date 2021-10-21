%{
// valid email
%}


domain ".com"|".in"|".org"|".edu"
u_name [a-z.0-9_]+{6}
domain_name [a-zA-Z0-9]+
email ({u_name}"@"{domain_name}{domain})

%%
{email} {printf("Valid email address\n");};
.+ {printf("Invalid email address\n");};
%%

int main() {
    printf("Enter email address: ");
    yylex();
}
int yywrap(void)
{
    return 0;
}
