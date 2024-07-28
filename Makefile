CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic
SRC = src/main.c src/player.c src/raycasting.c src/map.c src/utils.c
OBJ = $(SRC:.c=.o)
INCLUDE = -I include
LIBS = -lSDL2 -lm

maze_game: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o maze_game $(INCLUDE) $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean:
	rm -f $(OBJ) maze_game

