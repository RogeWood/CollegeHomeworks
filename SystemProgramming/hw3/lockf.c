#include <stdio.h>
#include <stdlib.h>
#include <sys/file.h>
#include <unistd.h>
#include <sys/types.h>

#define BUF_SIZE 4096

int main(int argc, char* argv[]) {
	int fd, offset;
	char buffer[BUF_SIZE] = {0};
	long long int fileSize;
	
	// open file
	fd = open("lockf.db", O_RDWR | O_CREAT);
	if(fd == -1) { // open faild
		fprintf(stderr, "cannot open file.\n");
		exit(1);
	}

	// open success
	// start code
	for(int i = 0; i < 1000; i++) {
		fileSize = lseek(fd, 0, SEEK_END);
		lockf(fd, F_LOCK, fileSize); // lock file
		
		// read number x in end of .db
		lseek(fd, 0, SEEK_END); // find file end
		lseek(fd, -4, SEEK_CUR); // move forword
		read(fd, buffer, 4); // save file data in to buffer
		sscanf(buffer, "%d", &offset); // save buffer data as int to offset

		// Move the pointer fd foward "X" bytes
		lseek(fd, 0, SEEK_END); // move to end
		lseek(fd, offset, SEEK_CUR); // move forward offset(x)
		// write the value "X+1"
		sprintf(buffer, "%d", offset+1);
		write(fd, buffer, 4);

		lockf(fd, F_UNLCK, 0); // unlock file

		// sleep 0.1s
		usleep(100000);
	}
	return 0;
}
