#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv) {
    int i, num=10, pid;
    for (int i=0; i<num; i++) {
        pid = vfork();
        if (pid == 0){
            execlp("ls", "ls", "-alh", "/", NULL);
            exit(0);
        }
        if (pid != 0){
            continue;
        }
    }
    if (pid != 0)
        getchar();
}