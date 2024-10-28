#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
	int fd_flock, fd_lockf;
	
	fd_flock = open("./flock.db", O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR| S_IWUSR);
	fd_lockf = open("./lockf.db", O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR| S_IWUSR);

	write(fd_flock, "3500", 4);
	write(fd_lockf, "3500", 4);
	
	close(fd_flock);
	close(fd_lockf);
	system("ls flock.db lockf.db -alhs");

	return 0;
}
