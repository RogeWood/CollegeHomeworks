#include <sys/inotify.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h>

#define MAX_SIZE 1024
int main(int argc, char **argv)
{
    // 取得檔案時間
    struct stat stat_buf;
    stat(argv[1], &stat_buf);
    // 取得資料長度    stat(argv[1], &stat
    char command[MAX_SIZE] = "cat ";
	strcat(command,argv[1]);

    time_t last_time, curr_time;
    last_time = stat_buf.st_mtime;
    printf("%s 修改的時間: %s\n", argv[1], ctime(&last_time));
	system(command);
    while (1)
	{
        // 當前時間
        stat(argv[1], &stat_buf);
        curr_time = stat_buf.st_mtime;
		if(last_time != curr_time) // 時間不同，跳出訊息
        {
            printf("上次修改的時間: %s\n", ctime(&last_time));
            printf("這次修改的時間: %s\n", ctime(&curr_time));
            system(command);
            last_time = curr_time;
        }
	}
    return 0;
}
