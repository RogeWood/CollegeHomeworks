#include <stdio.h>

void print_binary(int n)
{
    int arr[16] = {0}, i = 0;
    while(n > 0)
    {
        arr[i++] = n%2;
        n /= 2;
    }
    for(i = 15; !arr[i]; i--);
    for(;i >= 0; i--) printf("%d", arr[i]);
    printf("\n");
    return;
}

int main(void)
{
    int a, b, a1, b1, r1, r2;
    // get two number from input.
    scanf("%d %d", &a, &b);
    a1 = bin2bcd(a); // bin2bcd.s
    b1 = bin2bcd(b); // bin2bcd.s
    r1 = bcdadd(a1, b1); // bcdadd.s
    r2 = bcdsub(a1, b1); // bcdsub.s
    // output a1, b1, r1, and r2 in binary.
    printf("r1: ");
    print_binary(r1);
    printf("r2: ");
    print_binary(r2);
    return 0;
}