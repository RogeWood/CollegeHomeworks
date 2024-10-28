#include <stdio.h>
#include <stdlib.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>

#define BUF_SIZE 4096

int main(int argc, char* argv[]) {
	int fd, offset;
	char buffer[BUF_SIZE] = {0};
	// open file
	fd = open("flock.db", O_RDWR | O_CREAT);
	if(fd == -1) { // open faild
		fprintf(stderr, "cannot open file.\n");
		exit(1);
	}

	// open success
	// start code
	for(int i = 0; i < 1000; i++) {
		flock(fd, LOCK_EX); // lock file
		
		// read number x in end of .db
		lseek(fd, 0, SEEK_END); // find file end
		lseek(fd, -4, SEEK_CUR); // move forword
		read(fd, buffer, 4); // save file data in to buffer
		sscanf(buffer, "%d", &offset); // save buffer data as int to offset

		// Move the pointer fd foward "X" bytes
		lseek(fd, 0, SEEK_END);
		lseek(fd, offset, SEEK_CUR);
		// write the value "X+1"
		sprintf(buffer, "%d", offset+1);
		write(fd, buffer, 4);

		flock(fd, LOCK_UN); // unlock file

		// sleep 0.1s
		usleep(100000);
	}
	return 0;
}
