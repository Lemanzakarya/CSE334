#ifndef NOVA_H
#define NOVA_H

typedef struct {
    int char_type;
    // Diğer üyeler buraya eklenebilir
} YYSTYPE;

extern YYSTYPE yylval;

#define LETTER 1    // Harf
#define DIGIT 2     // Rakam
#define WHITESPACE 3 // Boşluk karakteri (örneğin, boşluk veya sekme)
#define PUNCTUATION 4 // Noktalama işareti
#define SPECIAL_CHAR 5
#define EOL 6
#define ERROR 7
#define PRINT 8

#endif /* NOVA_H */
