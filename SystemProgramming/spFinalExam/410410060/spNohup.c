/**
 這個程式碼只是參考用
 無法編譯
*/
#define _GNU_SOURCE
#include <assert.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
struct Task
{
    // 執行檔名稱
    char cmd[128];
    // 參數，最多128個，每個參數最多128字元
    char *para[128];
    // 參數的數量
    int nPara;
    int inputfd, outputfd, errfd;
};

// 最多128個task，將所有的初始化為0
struct Task tasks[128] = {0};
// task的總數
int nTask = 0;

char *parsePara(int argc, char **argv)
{
    // 如果沒有指定log file，第一個參數就是第一個task
    int paraCount = 1;
    // 回傳值是logfile的檔名
    char *ret = NULL;
    // 處理 spNohup -log ls-wc-output.log 的狀況
    if (strcmp(argv[1], "-log") == 0)
    {
        ret = argv[2];
        paraCount = 3;
    }
    // 頗析log file以外的所有參數
    for (; paraCount < argc; paraCount++)
    {
        // 遇到「|」就代表一個新的task
        if (strcmp(argv[paraCount], "|") == 0)
        {
            nTask++;
        }
        // 處理每一個task的執行檔名稱和參數
        else
        {
            // printf("npara: %d\n", tasks[nTask].nPara);
            // 「|」後面的第一個參數一定是執行檔名稱
            if (tasks[nTask].nPara == 0)
            {
                strncpy(tasks[nTask].cmd, argv[paraCount], 128);
                tasks[nTask].nPara = 0;
            }
            // task的參數，注意，依照慣例，執行檔名稱是第0個參數
            int paraIdx = tasks[nTask].nPara; // 增加可讀性
            tasks[nTask].para[paraIdx] = malloc(sizeof(char) * 128);
            strncpy(tasks[nTask].para[paraIdx], argv[paraCount], 128);
            tasks[nTask].nPara++;
        }
    }
    int paraIdx = tasks[nTask].nPara; // 增加可讀性
    tasks[nTask].para[paraIdx] = (char*)NULL;
    return ret;
}

// 這個部分可以不用考慮
int pgid; // process group id，讓這群task形成process group

void sigHandler(int signum)
{
    kill(pgid * -1, signum);
}

/**
在這個程式中額外的設定group id，並且也處理control-c
這些不在考試範圍內，其實可以不用處理
*/

int main(int argc, char **argv)
{
    char *logfile = parsePara(argc, argv);
    if (logfile == NULL)
    {
        // 應該可以這樣寫，要不然就用字串拷貝
        logfile = "./spNohup.log";
    }
    // for (int i = 0; i < tasks[0].nPara; i < i++)
    // {
    //     printf("I:%d %s\n",i, tasks[0].para[i]);
    // }
    int flags = O_CREAT | O_WRONLY | O_APPEND;
    mode_t mode = S_IRUSR | S_IWUSR;
    // 預設只有一個task，這個task的input是 「/dev/null」
    freopen("/dev/null", "R+", stdin); // 1️⃣
    // 預設只有一個task，他的輸出必須是logfile
    freopen(logfile, "w+", stdout); // 2️⃣
    // 所有task的stderr都是 logfile;
    freopen(logfile, "w+", stderr); // 3️⃣

    // 底下這一行是將『標準輸出』改成從 "stdout.log"
    // 底下這一行是將『標準錯誤』改成從 "stderr.log"

    // 接到nohup時，視而不見
    signal(SIGHUP, SIG_IGN);
    // sleep(10);
    execvp(tasks[0].cmd, tasks[0].para);

    // //當task的數量超過二個就要建立pipe
    // //將所有pipe一次性的建立好，例如：3個task要建立2個pipe
    // int pipe_fd[128][2];
    // for (int i=1; i< nTask; i++) {
    //     pipe(pipe_fd[i]);
    // }

    // // 建立第一個task
    // if ((pgid = fork())==0) {    //第一個child
    //     //這一行或許不用寫
    //     setpgid(getpid(), 0);
    //     if (nTask == 1) {   //只有一個task時
    //         execvp(tasks[0].cmd, tasks[0].para);
    //     } else {
    //         //將輸出變成pipe
    //         dup2(pipe_fd[1][1], STDOUT_FILENO);
    //         //將沒有用到的fd關閉
    //         for (int i=1; i< nTask; i++) {
    //             close(fd[i][0]);
    //             close(fd[i][1]);
    //         }
    //         execvp(tasks[0].cmd, tasks[0].para);
    //     }
    // }

    // 從這行開始pgid應該已經設定好了
    // 習慣上讓第一個child成為process group的頭
    //  printf("pgid = %d\n", pgid);

    // // 超過3個task時，處理第 2 ~~ n-1 的 task
    // for (int i=1; i< nTask; i++) {
    //     if (fork()==0) {  //child
    //         //加入群組
    //         setpgid(getpid(), pgid);
    //         dup2(pipe_fd[i][0], STDIN_FILENO);
    //         dup2(pipe_fd[i+1][1], STDOUT_FILENO);
    //         //將沒有用到的fd關閉
    //         for (int i=1; i< nTask; i++) {
    //             close(pipe_fd[i][0]);
    //             close(pipe_fd[i][1]);
    //         }
    //         execvp(tasks[i].cmd, tasks[i].para);
    //     } else {
    //         // parent繼續執行下一個loop
    //     }
    // }
    // //處理task數量 「大於 或 等於」 2 時的最後一個process
    // if (nTask >= 2) {
    //     if (fork()==0) {    //child
    //         //加入群組
    //         setpgid(getpid(), pgid);
    //         dup2(pipe_fd[nTask][1], STDOUT_FILENO);
    //         fd_reopen (STDOUT_FILENO, logfile, flags, mode);
    //         //將沒有用到的fd關閉
    //         for (int i=1; i< nTask; i++) {
    //             close(pipe_fd[i][0]);
    //             close(pipe_fd[i][1]);
    //         }
    //         execvp(tasks[nTask].cmd, tasks[nTask].para);
    //     }
    // }
    // //parent做完所有的事情，關閉所有的pipe
    // for (int i=1; i< nTask; i++) {
    //     close(pipe_fd[i][0]);
    //     close(pipe_fd[i][1]);
    // }
    // //收到ctr-c時，殺掉 process group裡面的所有task
    signal(SIGINT, sigHandler);
    // 等待所有task結束
    //  for (int i=0; i<nTask; i++) {
    //      int wstatus;
    //      wait(&wstatus);
    //  }
}