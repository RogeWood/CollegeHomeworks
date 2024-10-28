#include <stdio.h>
#include <string.h>

int equations[15][16];
void decode();
void encode();
void gaussian_elimination(int n);
void interchange(int n);
void rowChange(int n, int i, int j);
int gcd(int m, int n);

void print_matrix(int n)
{
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n+1; j++)
        printf("%d ", equations[i][j]);
        printf("\n");
    }
    printf("\n");
    return;
}

int main()
{
    int mode;
    scanf("%d", &mode);// 0 = Encode, 1 = Decode

    if(mode) decode();
    else encode();

    return 0;
}


void encode()
{
    // input
    int n, m;// n for chunks, m extend chunks
    scanf("%d %d", &n, &m);
    char inputString[15];
    scanf("%s", inputString);

    // make chunks
    int stringLength;
    stringLength = strlen(inputString);
    int chunks[15] = {0};

    int index = 0;
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < stringLength/n; j++)
        {
            chunks[i] = chunks[i]*10 + inputString[index] - '0';
            index++;
        }
    }

    // chunks for n
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(i == j)printf("1 ");
            else printf("0 ");
        }
        printf("%d \n", chunks[i]);
    }

    // make vandermonde matrix for m
    for(int i = 0; i < m; i++)
    {
        int x = 1, sum = 0;
        for(int j = 0; j < n; j++)
        {
            if(j) x *= i+1;
            printf("%d ", x);
            sum += x*chunks[j];
        }
        printf("%d \n", sum);

    }
    return;
}

void decode()
{

    // input
    int n;// n for chunks

    scanf("%d", &n);
    for(int i = 0; i < n; i++)
    for(int j = 0; j < n+1; j++)
    scanf("%d", &equations[i][j]);

    interchange(n);
    gaussian_elimination(n);

    for(int i = 0; i < n; i++)
    printf("%d", equations[i][n]);
    printf("\n");
    return;
}

void gaussian_elimination(int n)
{
    for(int i = 0; i < n; i++)// chouse row
    {
        for(int j = 0; j < n; j++)// the divide row
        {
            if(i != j && equations[j][i] != 0)// divide
            {
                int ngcd = gcd(equations[i][i], equations[j][i]);
                int muli = equations[j][i] / ngcd, mulj = equations[i][i] / ngcd;
                for(int k = 0; k < n+1; k++)
                {
                    equations[j][k] = equations[j][k]*mulj - equations[i][k]*muli;
                }
            }
        }
    }

    for(int i = 0; i < n; i++)// coefficient to 1
    {
        if(equations[i][i] != 1)
        {
            int divide = equations[i][i];
            for(int j = i; j < n+1; j++)
            equations[i][j] /= divide;
        }
    }
    return;
}

void interchange(int n)
{
    for(int i = 0; i < n; i++)
    {
        while(1)
        {
            int notZero = 0,index;
            for(int j = 0; j < n; j++)
            {
                if(equations[i][j] != 0)
                {
                    notZero++;
                    index = j;
                }
            }
            if(notZero == 1 && index != i)
                rowChange(n, i, index);
            else
                break;
        }
    }

    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(equations[j][i] != 0 && equations[j][j] == 0)
            {
                rowChange(n, i, j);
            }
        }
    }
    //print_matrix(n);
    return;
}

int gcd(int m, int n)
{
    while(n != 0)
    {
        int r = m % n;
        m = n;
        n = r;
    }
    return m;
}

void rowChange(int n, int i, int j)
{
    for(int k = 0; k < n+1; k++)
    {
        int t = equations[i][k];
        equations[i][k] = equations[j][k];
        equations[j][k] = t;
    }
    return;
}
