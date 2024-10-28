#include <stdio.h>
#include <stdlib.h>
#include <sys/file.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>
#include <sys/stat.h>
int main(int argc, char* argv[]) {
    int fd;
    char buffer[10]={0};
    int offset;
    long long fileSize;

    // open file
    fd = open ("lockf.db", O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
    if(fd == -1){
        fprintf(stderr,"open failed\n");
        exit(1);
    }
    
    for(int i=0; i<1000; i++){
	
	// lock
	fileSize=lseek(fd,0,SEEK_END);
        lockf(fd, F_LOCK, fileSize);
         
        // read the lsat one number x
        lseek(fd,-4,SEEK_END);
        read(fd,buffer,4);
        sscanf(buffer,"%d",&offset);

        // skip x bytes
        lseek(fd,offset,SEEK_END);
        
        // write x+1
        offset++;
        sprintf(buffer,"%d",offset);
        write(fd,buffer,4); 
        
        // unlock
        lockf(fd, F_UNLCK,0);
        
        // stop 0.1 sec
        usleep(100000);
    }
    return 0;
}
