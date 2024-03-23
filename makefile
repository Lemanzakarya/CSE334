nova: nova.l
	lex nova.l
	gcc -o nova lex.yy.c -ll

clean:
	rm nova lex.yy.c
