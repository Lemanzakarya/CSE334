%{
#include "myscanner.h"
%}

%%
"db_type"                  { return TYPE; }
"db_name"                  { return NAME; }
"db_table_prefix"          { return TABLE_PREFIX; }
"db_port"                  { return PORT; }
[-/*]+                      { return COLON; }
[a-zA-Z][_a-zA-Z0-9]*      { return IDENTIFIER; }
.                           ; // Diğer tüm karakterleri atla
%%
