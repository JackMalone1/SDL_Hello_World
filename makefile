.DEFAULT_GOAL:= build
fileName := "mainFile"
files := "./src/main.cpp" "./src/game.cpp"
CC = g++
INCLUDE_PATHS = -IC:\x86_64-w64-mingw32\include\SDL2
LIBRARY_PATHS = -LC:\x86_64-w64-mingw32\lib
COMPILER_FLAGS = -w -Wl,-subsytem, windows
LINKER_FLAGS  = -lmingw32 -lSDL2main -lSDL2
build:
	@echo "Build started"
	CC -o ${files} ${INCLUDE_PATHS} ${LIBRARY_PATHS} ${COMPILER_FLAGS} ${LINKER_FLAGS}
	./${fileName}

clean:
	@echo "Cleaning up"
	rm *.o