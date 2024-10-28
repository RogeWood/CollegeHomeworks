#define _GNU_SOURCE
#include <sched.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

long long cpp=0;

void alarmHandler(int signo){
	printf("cpp=%lld\n",cpp);
	exit(0);
}

int main(int argc,char*argv[]){
	cpu_set_t mask;
	CPU_ZERO(&mask);
	CPU_SET(1,&mask);
	sched_setaffinity(0,sizeof(mask),&mask);
	int nice_v=5;
	if(argc>1){
		nice_v=atoi(argv[1]);
	}
	int childPid=fork();
	/*cpu_set_t mask;
        CPU_ZERO(&mask);
        CPU_SET(1,&mask);
        sched_setaffinity(0,sizeof(mask),&mask);*/
	if(childPid>0){
		//parent
		nice(nice_v);
	}else{
		//child
	}
	//設定鬧鐘（SIGALRM）叫的時候，『作業系統』呼叫 alarmHandler
	signal(SIGALRM,alarmHandler);
	alarm(1);
	while(1){
		cpp++;
	}
}
