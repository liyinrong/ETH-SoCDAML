# Custom options
# Default: enable EXERCISE 1. Use "-e" option with "make" to override
#
# ex.
#       make -e MYOPTS="-DEX2 -DEX3"
#
MYOPTS = -DEX1

CC	= gcc
LD	= ld
OBJDUMP	= objdump

CSRCS	= test.c
WSRC    = work.c
COBJS	= $(CSRCS:.c=.o)
WOBJ    = $(WSRC:.c=.o)
EXE	= $(CSRCS:.c=.exe)

CFLAGS	=-pg -fopenmp -O0 -std=c99
CFLAGS +=${MYOPTS}
LDFLAGS	=-lgomp

$(EXE):	$(WOBJ) $(COBJS)
	$(CC) $(CFLAGS) $(COBJS) $(WOBJ) -o $@ $(LDFLAGS)

$(WOBJ):$(WSRC)
	$(CC) -O0 -pg -c $< -o $@

all:	$(EXE)

clean:
	rm -f *.o
	rm -f *~
	rm -f *.dis
	rm -f *.out
	rm -f $(EXE)

run:	$(EXE)
	./$(EXE)

disassemble:
	$(OBJDUMP) -DS $(COBJS) > test.dis
