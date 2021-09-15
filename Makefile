bin/final: obj/main.o obj/file_1.o lib/lib_file_2.a 
	gcc obj/main.o obj/file_1.o lib/lib_file_2.a -o $@

obj/main.o: src/main.c inc/header.h
	gcc -c -Iinc src/main.c -o $@

obj/file_1.o: src/file_1.c inc/header.h
	gcc -c -Iinc src/file_1.c -o $@
	

.PHONY: clean
clean:
	rm -f obj/main.o obj/file_1.o obj/file_2.o bin/final
