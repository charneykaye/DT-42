CC =		gcc
CLIBS =		$(shell sdl-config --libs) -lm #-lefence
CFLAGS =	-O3 -Wall $(shell sdl-config --cflags) -g -Wall

HEADERS =	smixer.h sseq.h gui.h version.h
SOURCES =	dt42.c smixer.c sseq.c gui.c

all:		dt42

clean:
		rm -f *.o
		rm target/dt42

dt42:		${SOURCES} ${HEADERS}
		${CC} ${CFLAGS} -o target/dt42 ${SOURCES} ${CLIBS}
