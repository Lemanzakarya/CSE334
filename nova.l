%{
#include "nova.h"
%}

%%
[a-zA-Z]    { yylval.letter = *yytext; return LETTER; }
[0-9]       { yylval.number = atoi(yytext); return DIGIT; }
[ \t]       { yylval.char_type = WHITESPACE; return WHITESPACE; }
[.,;:!?]    { yylval.char_type = PUNCTUATION; return PUNCTUATION; }
[!\"#\$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~]  { yylval.char_type = SPECIAL_CHAR; return SPECIAL_CHAR; }
\n          { yylval.char_type = EOL; return EOL; }
"print"     { yylval.char_type = PRINT; return PRINT; } // Print karakteri eklendi
.           { yylval.char_type = ERROR; return ERROR; }

%%

int yywrap() {
    return 1;
}
