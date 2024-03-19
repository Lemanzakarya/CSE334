%{
#include "nova.h"
%}


%%
true|false		printf("BOOLEAN\n");
;			printf("SEMICOLON\n");
.			printf("Syntax Error!");
%%
