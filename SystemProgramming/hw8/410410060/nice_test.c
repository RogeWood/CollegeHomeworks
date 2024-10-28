#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <sched.h>

long long cpp = 0;

//鬧鐘的時間到了，關閉程式
void alarmHandler(int signo) {
    printf("cpp = %lld\n", cpp);
    exit(0);
}

int main(int argc, char* argv[]) {
    cpu_set_t mask; //CPU核的集合
    CPU_ZERO(&mask);
    CPU_SET(1, &mask);
    sched_setaffinity(0, sizeof(mask), &mask); //先做好參數設定，綁在第一顆處理器

    int nice_v = 5; // childe 和 parnet 優先序差
	if(argc > 1) { // 讀入優先序差的參數
		nice_v=atoi(argv[1]);
	}
	int childPid=fork(); // 產生二個行程

    // nice 值更改
    if (childPid > 0) { //養我們的雙親
        nice(nice_v); //修改雙親的 nice 值 
    }
    else {
        //child do not thing
    }


    //底下的程式碼無論child是否大於0都會執行
    //設定鬧鐘（SIGALRM）叫的時候，『作業系統』呼叫alarmHandler
    signal(SIGALRM,alarmHandler);
    //把鬧鐘的時間定在1秒鐘以後
    alarm(1);
    //不斷地cpp++
    while(1){
        cpp++;
    }
}