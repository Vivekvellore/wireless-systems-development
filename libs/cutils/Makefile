CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -Iinclude
SRC := $(wildcard src/*.c)
OBJ := $(SRC:.c=.o)
LIB := libcutils.a

all: $(LIB)
$(LIB): $(OBJ)
	ar rcs $@ $^
clean:
	rm -f $(OBJ) $(LIB)
