#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAXN 1000

struct CandidateShape{
    int x,y;
};

struct User{
    int id;
    struct CandidateShape *shapes;
    int len;
};

struct Answer{
    int id;
    struct CandidateShape shape;
    int starX;
    int starY;
};

int resourceX, resourceY, userLen, ansLen;
struct User *users;
struct Answer *ans;
int *isUsedID;

void init_input();
void fource_solution();
void show_answer();
int main()
{
    init_input();
    fource_solution();
    show_answer();

    return 0;
}
void fource_solution()
{
    int currX = 0;
    ansLen = 0;
    ans = (struct Answer*)malloc(sizeof(struct Answer));

    for(int i = 0; i < userLen; i++)
    {
        int x = users[i].shapes[0].x;
        if(currX + x <= resourceX)
        {
            ans = (struct Answer*)realloc(ans, sizeof(struct Answer) * (ansLen+1));
            ans[ansLen].id = i;
            ans[ansLen].shape = users[i].shapes[0];
            ans[ansLen].starX = currX;
            ans[ansLen].starY = 0;
            ansLen++;
            currX += x;
        }
    }

    return;
}


void init_input()
{
    scanf("%d %d %d", &resourceY, &resourceX, &userLen);
    users = (struct User*)malloc(sizeof(struct User) * userLen);
    // memset(isUsedID, 0, sizeof(int) * userLen);
    char str[MAXN];
    fgets(str, MAXN, stdin);// first end line
    for(int i = 0; i < userLen; i++)
    {
        fgets(str, MAXN, stdin);
        users[i].id = str[0] - '0';
        int p = 1, len = 0, type = 0;
        users[i].shapes = (struct CandidateShape*)malloc(sizeof(struct CandidateShape));
        while(str[p] != '\0')
        {
            p++;
            int n = 0;
            while(str[p] >= '0' && str[p] <= '9') // turn string to number
            {
                n *= 10;
                n += str[p] - '0';
                p++;
            }

            if(type)//x
            {
                users[i].shapes[len].x = n;
                type = 0;
                len++;
            }
            else//y
            {
                users[i].shapes = (struct CandidateShape*)realloc(users[i].shapes, sizeof(struct CandidateShape) * (len+1));
                users[i].shapes[len].y = n;
                type = 1;
            }
        }
        users[i].len = len;
    }
    return;
}

void show_answer()
{
    printf("%d\n", ansLen);
    for(int i = 0; i < ansLen; i++)
        printf("%d %dx%d %d %d\n", ans[i].id, ans[i].shape.y, ans[i].shape.x, ans[i].starY, ans[i].starX);
    return;
}
// 16 32 5
// 0 4x4 2x8
// 1 1x16
// 2 8x2 4x4 2x8
// 3 2x8 1x16
// 4 16x1 8x2 4x4 2x8 1x16
