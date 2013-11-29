SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

ALL_LIBS = json-c    \
		   libcurl   \

CFLAGS += -Wall
CFLAGS := $(shell pkg-config --cflags $(ALL_LIBS)) $(CFLAGS)
LIBS := $(shell pkg-config --libs $(ALL_LIBS)) $(LIBS)

all: fmc

debug: CFLAGS += -g
debug: fmc

release: CFLAGS += -O2
release: fmc

fmc: ${OBJ}
	gcc ${CFLAGS} -o $@ $^ ${LIBS}

%.o: %.c
	gcc ${CFLAGS} -c $<

clean:
	-rm *.o
