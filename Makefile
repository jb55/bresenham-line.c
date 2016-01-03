
CFLAGS = -Isrc -Wall -Wextra

all: build/bresenham-line.o

build/%.o: %.c %.h
	@mkdir -p build
	$(CC) -c $< -o $@ $(CFLAGS)

test: test.c build/bresenham-line.o
	@$(CC) $^ -o $@ $(CFLAGS)
	@./test

clean:
	rm -rf build
	rm -f test

tests: test

.PHONY: tests clean
