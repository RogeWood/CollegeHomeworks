all: flock.c lockf.c create.c 
	gcc flock.c -o flock
	gcc lockf.c -o lockf
	gcc create.c -o create
	./create
clean:
	rm flock lockf create flock.db lockf.db
