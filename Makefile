all: compile link

test: compile link run

compile:
	cd src/compiled && g++ -isystem../include -c ../../project/*.cpp -Wall -Werror

link:
	g++ src/compiled/*.o -Lsrc/lib -o src/bin/main -lmingw32 -lSDL2main -lSDL2 -lsdl2_image

run:
	./src/bin/main.exe