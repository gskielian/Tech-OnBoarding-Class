CC=riscv32-unknown-linux-gnu-gcc
DEPS=00_printf.h
OBJ=00_printf.o

# $< is first item on the right
# $^ is the right side of the :
# $@ is the left side of the :
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
	
00_printf: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


.PHONY: clean

clean:
	rm -f 00_printf 00_printf.o
