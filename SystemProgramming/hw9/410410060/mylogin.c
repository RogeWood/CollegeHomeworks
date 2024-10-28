#include<string.h>
#include<ctype.h>
#include<grp.h>
#include<limits.h>
#include<stdio.h>
#include<sys/types.h>
#include<pwd.h>
#include<assert.h>
#include<stdlib.h>
#include<unistd.h>
#include <sys/wait.h>
// 刪除字串左邊空格
char* ltrim(char *s){
    while(isspace(*s)) s++;
    return s;
}
// 刪除字串右邊空格
char* rtrim(char *s){
    char* back = s + strlen(s);
    while(isspace(*--back));
    *(back+1) = '\0';
    return s;
}
// 刪除字串兩邊空格
char *trim(char *s){
    return rtrim(ltrim(s));
}

int main(int argc, char* argv[]) {
    char username[1024];
    char* namePtr;
    //<limits.h>
    char passwordStr[sysconf(_SC_PASS_MAX)];
    struct passwd passwd_ent;
    struct passwd *result;
    struct group *gr;
    char buffer[1024];
    long ngroups_max;
    gid_t gid;
    gid_t groups[sysconf(_SC_NGROUPS_MAX)];//使用者最多可隸屬多少群組
    int nGroup = sysconf(_SC_NGROUPS_MAX);
    int ret;


relogin : // goto 重新登入
    printf("請輸入名稱:\n");
    //assert(fgets(username, 1024, stdin)!=NULL);
    namePtr = fgets(username, 1024, stdin);
    printf("gets %s\n", namePtr);
    // printf("請輸入密碼\n");
    
    // 獲取使用者輸入的密碼
    strncpy(passwordStr, getpass("請輸入密碼"), sysconf(_SC_PASS_MAX));
    namePtr = trim(namePtr); // 移除非 ASCII 的字元

    // 檢查使用者是否存在
    ret = getpwnam_r(namePtr, &passwd_ent, buffer, 1024, &result);
    if (ret != 0){
        perror("發生錯誤，必須吐一些東西到螢幕上：");
        goto relogin;
    }

    //查詢這個使用者屬於哪些 group
    int pid;
    pid=fork();
    if(pid >0){
        int wret;
        wait(&wret);
        goto relogin;
    }
    else{
    
    ret = getgrouplist(namePtr, passwd_ent.pw_gid, groups, &nGroup);
    printf("getgrouplist = %d\n", ret);
    printf("使用者編號: %d\n", passwd_ent.pw_uid);
    printf("使用者名稱: %s\n", passwd_ent.pw_name);
    printf("群組編號：%d\n", passwd_ent.pw_gid);
    printf("家目錄: %s\n", passwd_ent.pw_dir);
    printf("其他訊息 %s\n", buffer);
    printf("所隸屬的所有群組： ");
    printf("共%d個\n", nGroup);
    for (int i=0; i< nGroup; i++) {
        gr = getgrgid(groups[i]);
        printf("%s, ", gr->gr_name);
    }
    printf("\n");
    assert(setgid(passwd_ent.pw_gid)==0); //設定使用者的gid
    
    // 更換工作目錄
    assert(chdir(passwd_ent.pw_dir)==0);
    // 設定環境變數為 HOME
    setenv("HOME", passwd_ent.pw_dir, 1);
    // 改變使用者的UNIX群組
    setgroups(0, NULL);
    
    setgroups(sysconf(_SC_NGROUPS_MAX), groups);
    
    assert(setuid(passwd_ent.pw_uid) == 0);
    
    char *arg[]={"bash",NULL};
        ret=execvp("bash",arg);
        if (ret==-1){
            perror("execvp");
        }
    }
    return 0;
}