
%{
#include "nova.h"
%}

%%
[0-9]+\.           { yylval.number = atoi(yytext); return NUMBER; }
[a-h]              { yylval.letter = *yytext; return LETTER; }
[1-8]              { yylval.rank = *yytext; return RANK; }
.                  { yylval.count++; } // Herhangi bir karakteri yakala ve sayacı artır
%%

int yywrap() {
    return 1; 
%%
