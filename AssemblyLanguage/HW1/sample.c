#include <stdio.h>

int main(void)
{
   int i, sum;
   
   sum = 0;
   for (i=1; i<=100; i++) {
      sum = sum + i;
   }
   
   printf("%d\n", sum);
   
   return 0;
}