#include <iostream>
#include <stdio.h>
#define p 43
#define q 59
#define e 13
int candp(int a,int b,int c); //資料處理函式，實現冪的取餘運算
int fun(int x,int y); //公鑰e與t的互素判斷

int main()
{
    int d,m,n,t,c,r;
    int m_t = 0;
    int m_i;
    int m_j;
    int ciphertext[100];             //存放密文的陣列
    int proclaimedtext[100];         //存放明文的陣列
    
    n=p*q;
    t=(p-1)*(q-1);                              //求n的尤拉數
    d = 1;

    while(((e * d) % t) != 1)
    {
        d++;                  //由公鑰e求出私鑰d
    }

    printf("加密請輸入 1  解密請輸入 2\n");   //加密或解密選擇
    scanf("%d",&r);
    switch(r)
    {
        case 1: printf("請輸入密文 m: ");       
            scanf("%d",&m);
            m_i = 0;
            while(m / 100)
            {
            m_t = m % 100;
            ciphertext[m_i] = m_t;
            proclaimedtext[m_i] = candp(m_t,e,n);
            m /= 100;
            m_i++;
            }
            ciphertext[m_i] = m;
            proclaimedtext[m_i] = candp(m,e,n);
            printf("明文為:\n");
            for(int i = 0 ; i <= m_i ;i++)
            {
            printf("%d ",proclaimedtext[i]);
            }
            printf("\n");
            break;
        case 2: printf("明文為 c: ");         
            for(int i = 0 ; i <= m_i ;i++)
            {
            printf("%d ",proclaimedtext[i]);
            }
            printf("\n");
            m_j = 0;
            while(m_i--)
            {
            ciphertext[m_j] = candp(proclaimedtext[m_j],d,n);
            m_j++;
            }
            printf("密文為:\n");
            for(int i = m_j ; i >= 0 ;i--)
            {
            printf("%d",ciphertext[i]);
            }
            printf("\n");
        break;
    }
}
int candp(int a,int b,int c)        //資料處理函式，實現冪的取餘運算
{
    int r=1;
    b=b+1;
    while(b!=1)
    {
        r=r*a;
        r=r%c;
        b--;
    }
    return r;
}
int fun(int x,int y)               //公鑰e與t的互素判斷
{
    int t;
    while(y)
    {
        t=x;
        x=y;
        y=t%y;
    }
    if(x == 1) return 0;                          //x與y互素時返回0
    else return 1;                          //x與y不互素時返回1
}