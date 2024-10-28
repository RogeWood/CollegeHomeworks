#include <stdio.h>
#include <stdlib.h>
#include <sys/file.h>
#include <unistd.h>
#include <time.h>
#include <string.h>

#define	BUFFER_SIZE	4096

int main(int argc, char **argv)
{
	int fd, ret, offset;
	char buffer[BUFFER_SIZE];
	struct timespec pause;
	
	pause.tv_sec = 0;
	pause.tv_nsec = 1e+8;

	fd = open ("./flock.db", O_RDWR);
	flock(fd, LOCK_EX);
	puts("start");

	for (int i = 0; i < 1000; ++i) {
		lseek(fd, 0, SEEK_END);
		lseek(fd, -1, SEEK_CUR);
		read(fd, buffer, 1);
	        sscanf(buffer, "%d", &offset);
		lseek(fd, 0, SEEK_END);
		lseek(fd, offset, SEEK_END);
	        sprintf(buffer, "%d", offset + 1);
		write(fd, buffer, strlen(buffer));
		nanosleep(&pause, &pause);
	}

	flock(fd, LOCK_UN);
	puts("finish");

	return 0;
}
