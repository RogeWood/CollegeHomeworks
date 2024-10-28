#include <stdio.h>
#include <stdlib.h>
#include <sys/file.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <time.h>

#define	BUFFER_SIZE	4096

int main(int argc, char* argv[])
{
	int fd, ret, offset;
	char buffer[BUFFER_SIZE];
	struct timespec pause;

	pause.tv_sec = 0;
	pause.tv_nsec = 1e+8;

	fd = open("lockf.db", O_RDWR);
	lockf(fd, F_LOCK, SEEK_END - SEEK_SET);
	puts("start");		
	
	for (int i = 0; i < 1000; ++i) {
		lseek(fd, 0, SEEK_END);
		lseek(fd, -1, SEEK_CUR);
		read(fd, buffer, 1);
		sscanf(buffer, "%d", &offset);
		lseek(fd, 0 , SEEK_END);
		lseek(fd, offset, SEEK_END);
		sprintf(buffer, "%d", offset + 1);
		write(fd, buffer, strlen(buffer));
		//nanosleep(&pause, &pause);
		lockf(fd, F_LOCK, SEEK_END - SEEK_SET);
	}

	lockf(fd, F_ULOCK, SEEK_END - SEEK_SET);

	printf("success\n");
	
	return 0;
}
