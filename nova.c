#include <stdio.h>
#include <nova.h>

extern FILE *yyin;
extern int yylex();

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <file_name>\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror("File opening error");
        return 1;
    }

    yyin = file; // lexer için girdi dosyasını ayarla

    int token;
    int char_count = 0; // Karakter sayısını tutacak değişken
    while ((token = yylex()) != 0) {
        // Karakter sayısını hesapla
        if (token != WHITESPACE && token != EOL) {
            char_count++;
        }
    }

    printf("Total char count: %d\n", char_count);

    fclose(file);
    return 0;
}
