all: lockf flock lockf.db flock.db
lockf:lockf.c
	gcc lockf.c -o lockf
flock:flock.c
	gcc flock.c -o flock
lockf.db:
	echo -n 3500 > lockf.db 
flock.db:
	echo -n 3500 > flock.db 
clean:
	rm flock lockf *.db
