#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#define setBit(A,k)     (A[(k)/32] |= (1 << ((k)%32)))
// #define clearBit(A,k)   (A[(k)/32] &= ~(1 << ((k)%32)))
#define testBit(A,k)    (A[(k)/32] & (1 << ((k)%32)))

int p, m, n;

int hashingFunction(int userID)
{
    return userID * userID % p % m;
}

int main()
{
    uint32_t *table; // bit array
    scanf("%d %d %d", &p, &m, &n);
    table = (uint32_t*)calloc(m / 32 + 1, sizeof(uint32_t));
    while(n--)
    {
        int userID;
        scanf("%d", &userID);

        int hashIndex = hashingFunction(userID);
        if(!testBit(table, hashIndex)) // Accept
        {
            printf("%d 1\n", userID);
            setBit(table, hashIndex);
        }
        else printf("%d 0\n", userID);
    }
    return 0;
}
