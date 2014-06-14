SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

ALL_LIBS = json-c    \
		   libcurl   \

CFLAGS += -Wall
CFLAGS := $(shell pkg-config --cflags $(ALL_LIBS)) $(CFLAGS)
LIBS := $(shell pkg-config --libs $(ALL_LIBS)) $(LIBS)

all: rpc

debug: CFLAGS += -g
debug: rpc

release: CFLAGS += -O2
release: rpc

rpc: ${OBJ}
	gcc ${CFLAGS} -o $@ $^ ${LIBS}

%.o: %.c
	gcc ${CFLAGS} -c $<

clean:
	-rm *.o
