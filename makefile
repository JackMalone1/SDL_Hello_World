.DEFAULT_GOAL:= build
fileName := "sampleapp"
files := "./src/main.cpp" "./src/game.cpp"
CC = g++

LINKER_FLAGS  = -lmingw32 -lSDL2main -lSDL2
build:
	@echo "Build started"
	g++ -o ${fileName} ${files} -I.
	./${fileName}

clean:
	@echo "Cleaning up"
	rm *.o
	rm *.s
