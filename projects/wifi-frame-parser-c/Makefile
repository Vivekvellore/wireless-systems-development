CC ?= cc
CFLAGS ?= -O2 -Wall -Wextra -Iinclude -I../../libs/cutils/include
LDFLAGS ?=
OBJ := src/main.o ../../libs/cutils/libcutils.a

all: build
../../libs/cutils/libcutils.a:
	$(MAKE) -C ../../libs/cutils
build: ../../libs/cutils/libcutils.a src/main.o
	$(CC) -o build $^ $(LDFLAGS)
clean:
	rm -f src/*.o build
	$(MAKE) -C ../../libs/cutils clean
