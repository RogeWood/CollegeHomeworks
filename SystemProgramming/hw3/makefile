all: flock.c lockf.c
	echo -n 3500 > lockf.db 
	echo -n 3500 > flock.db 
	gcc flock.c -o flock
	gcc lockf.c -o lockf
clean:
	rm flock lockf flock.db lockf.db
