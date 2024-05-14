AS = nasm
ASFLAGS = -f elf64
LDFLAGS = -nostartfiles

build: asmfetch

asmfetch: fetch.o
	$(LD) $(LDFLAGS) -o $@ $<

%.o: %.asm
	$(AS) $(ASFLAGS) -o $@ $<
