OBJECT_FILES = ./build/func1.o ./build/func2.o

system: ${OBJECT_FILES}
./build/func1.o: ./func1.cpp
			g++ ./func1.cpp -o -c ./build/func1.o
./build/func2.o: ./func2.cpp
			g++ ./func2.cpp -o -c ./build/func2.o 
all:
			g++ ./build/func2.o ./build/func1.o main.cpp -o ./main.exe