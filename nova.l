%{
#include "nova.h"
%}


%%cdfd
true|false		printf("BOOLEAN\n");
;			printf("SEMICOLON\n");
.			printf("Syntax Error!");
%%

