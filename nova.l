%{
#include "nova.h"
%}


%%
sonolsun
true|false		printf("BOOLEAN\n");
;			printf("SEMICOLON\n");
.			printf("Syntax Error!");
%%
