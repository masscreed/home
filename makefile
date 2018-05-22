C = gcc
flag = -c -Wall -Werror -std=c99

all: ./bin/games

./bin/games: ./build/src/main.o
	$(C) ./build/src/main.o -o ./bin/games

./build/src/main.o: ./src/main.c
	$(C) $(flag) ./src/main.c -o ./build/src/main.o

.PHONY: clean
clean:
	rm -rf ./build/src/*.o
	rm -rf ./build/test/*.o

.PHONY: test
test: ./bin/gamestest
		./bin/gamestest
