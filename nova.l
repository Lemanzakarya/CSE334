%{
#include "nova.h"
%}

%%
[a-zA-Z]    {return LETTER; }
[0-9]       {return DIGIT; }
[ \t]       {return WHITESPACE; }
[.,;:!?]    {return PUNCTUATION; }
[!\"#\$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~]  {return SPECIAL_CHAR; }
\n          {return EOL; }
"print"     {return PRINT; } // Print karakteri eklendi
.           {return ERROR; }

%%

int yywrap(void) {
    return 1;
}


