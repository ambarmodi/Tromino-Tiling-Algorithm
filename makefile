all: project2

project2: strassen.out tromino.out
	
strassen.out: strassen.o
	gcc -g strassen.o -o strassen.out

strassen.o: strassen.c
	gcc -g -c strassen.c -o strassen.o

tromino.out: tromino.o
	gcc -g tromino.o -o tromino.out

tromino.o: tromino.c
	gcc -g -c tromino.c -o tromino.o

clean:
	find . -type f -name "*.o" -delete
	find . -type f -executable -delete
