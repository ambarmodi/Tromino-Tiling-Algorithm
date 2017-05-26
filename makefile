all: project2

project2: tromino.out

tromino.out: tromino.o
	gcc -g tromino.o -o tromino.out

tromino.o: tromino.c
	gcc -g -c tromino.c -o tromino.o

clean:
	find . -type f -name "*.o" -delete
	find . -type f -executable -delete
