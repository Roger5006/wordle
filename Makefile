CC = clang

# Make sure to use the full CFLAGS before turning in. Uncomment this for lax
# checking during development, if you need to.
# CFLAGS =

# You can comment this out and use the above CFLAGS instead if you need to,
# during development.
CFLAGS = -Wall -Wpedantic -Werror -Wextra


all: guess

guess: wordle_game.o guess.o
	$(CC) wordle_game.o guess.o -o guess

guess.o: guess.c wordle_game.h
	$(CC) $(CFLAGS) -c guess.c 

wordle_game.o: wordle_game.c wordle_game.h
	$(CC) $(CFLAGS) -c wordle_game.c 

clean:
	rm -f guess wordle_game.o guess.o

format:
	clang-format -i -style=file *.[ch]
