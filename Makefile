build:
	nasm -f elf64 -o fetch.o fetch.asm
	gcc -nostartfiles -o asmfetch fetch.o