#include <sys/inotify.h>
#include <stdio.h>
#include <dirent.h>
#include <unistd.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/types.h>
#include <time.h>
#include <stdio.h>

/*void getMTime(int fd,struct tm*tm){
	struct stat statbuf;
	struct tm t;
	char buf[1000];
	fstat(fd,&statbuf);
	tzset();
	localtime_r(&(statbuf.st_mtime),tm);
}*/

int main(int argc,char*argv[]){
	//char timeStr[100];
	struct stat statbuf;
	char buffer[4096];
	char filename[4096];
	strcpy(filename,argv[1]);
	stat(filename,&statbuf);
	char command[4096]="cat ";
	int readFd;
	char*cur_mtime;
	char*last_mtime;
	int fd=inotify_init();
	int wd=inotify_add_watch(fd,argv[1],IN_MODIFY);
	//readFd=open(argv[1],O_RDONLY);
	//getMTime(readFd,&cur_mtime);
	//strftime(timeStr,1000,"%F %T",&cur_mtime);
	cur_mtime=ctime(&statbuf.st_mtime);
	printf("這次修改時間:%s\n",cur_mtime);
	strcat(command,argv[1]);
	system(command);
	last_mtime=cur_mtime;
	while(1){
		read(fd,buffer,4096);
		stat(argv[1],&statbuf);
		//getMTime(readFd,&cur_mtime);
		//strftime(timeStr,1000,"%F %T",&last_mtime);
		printf("上次修改時間:%s\n",last_mtime);
		cur_mtime=ctime(&statbuf.st_mtime);
		//strftime(timeStr,1000,"%F %T",&cur_mtime);
		printf("這次修改時間:%s\n",cur_mtime);
		system(command);
	}
	inotify_rm_watch(fd,wd);
	return 0;
}