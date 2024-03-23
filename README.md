# NOVA

 Nova language is designed to count all characters in a paragraph and provide the total character count as output.

## Table of Contents

  - [NOVA](#project-name)
  - [Table of Contents](#table-of-contents)
  - [Members](#members)
  - [Purpose](#purpose)
  - [BNF form](#bnfform)
  

## Members

 -Leman Zakaryayeva (20200808504@ogr.akdeniz.edu.tr)
 -Elif Keskin (20210808062@ogr.akdeniz.edu.tr)
 -Inji Aliyeva (20200808505@ogr.akdeniz.edu.tr)
 -Özlem Şençoruh (20210808055@ogr.akdeniz.edu.tr)

## Purpose

The Nova language emerges as a tool tailored specifically for character counting within textual paragraphs. Its primary objective lies in facilitating efficient character counting operations, catering to a diverse range of applications across various domains. With its streamlined functionality, Nova offers a straightforward solution for tasks requiring precise character analysis, such as text processing, data manipulation, and content analytics.

By providing a seamless interface for users to input paragraphs and swiftly obtain accurate character counts, Nova aims to enhance productivity and streamline workflows in both personal and professional settings. Whether used for simple text editing tasks or integrated into complex data processing pipelines, Nova stands as a versatile and reliable tool capable of meeting diverse user needs.

Furthermore, Nova's design prioritizes simplicity and ease of use, ensuring accessibility for users of all proficiency levels. Its intuitive interface and clear output format empower users to effortlessly incorporate character counting functionality into their projects, without the need for extensive training or technical expertise.

In essence, the overarching goal of the Nova language is to simplify character counting tasks, empower users with actionable insights derived from textual data, and foster efficiency and productivity in a wide array of applications and use cases.

### Syntax:

```

<prog>         : <stmts> ;

<stmts>        : <stmt> | <stmt> <semicolon> <stmts> ;

<stmt>         : <expr> | <if_stmt> | <while_loop> | <for_loop> | <print_stmt> | <func> | <IO_stmt> | <assignment> ;

<if_stmt>      : IF_STMT OPEN_PARANTHESIS <expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY <else_part> ;

<else_part>    : ELSE_STMT OPEN_CURLY <stmts> CLOSE_CURLY | ELSE_IF_STMT OPEN_PARANTHESIS <expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY <else_part> | ;

<while_loop>   : WHILE_LOOP OPEN_PARANTHESIS <logic_expr> CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY ;

<for_loop>     : FOR_LOOP OPEN_PARANTHESIS <type> VARIABLE COLON VARIABLE CLOSE_PARANTHESIS OPEN_CURLY <stmts> CLOSE_CURLY ;

<type>         : INT_TYPE | FLOAT_TYPE | STRING_TYPE | BOOLEAN_TYPE | CHAR_TYPE | CONSTANT | VOID_TYPE ;

<expr>         : <expr> MINUS <term> | <expr> PLUS <term> | <term> ;

<logic_expr>   : <term> EQUALITY_CHECK <term> | <term> NOT_EQUAL_CHECK <term> | <term> AND_OP <term> | <term> OR_OP <term> | <term> SMALLER_OP <term> | <term> GREATER_OR_EQUAL_OP <term> | <term> SMALLER_OR_EQUAL_OP <term> | NOT_OP <term> ;

<term>         : <term> DIVIDE <factor> | <term> TIMES <factor> | <factor> ;

<factor>       : CONSTANT ;

<print_stmt>   : PRINT OPEN_PARENTHESIS <expr> CLOSE_PARENTHESIS ;

<func>         : FUNCTION <type> <variable> OPEN_PARENTHESIS <func_args> CLOSE_PARENTHESIS ;

<func_args>    : <type> <variable> | <type> <variable> COMMA <func_args> ;

<IO_stmt>      : IO_OP OPEN_PARENTHESIS VARIABLE VARIABLE CLOSE_PARENTHESIS ;

<assignment>   : <type> <variable> EQUAL_SIGN <variable> ;

<variable>     : CONST | VARIABLE ;
```

