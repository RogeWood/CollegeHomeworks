#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libgen.h>

#define BufferSize 4096

int main(int argc, char *argv[])
{
    char* exeName = basename(argv[0]); // cmd
    char exeBuffer[BufferSize] = {'\0'};
    strcat(exeBuffer, exeName);
    for(int i = 1; i < argc; i++) // parameters
    {
        strcat(exeBuffer, " ");
        strcat(exeBuffer, argv[i]);
    }
    strcat(exeBuffer, "\n\0"); // end of cmd (run faster)
    // printf("%s", exeBuffer);
    system(exeBuffer);
    return 0;
}
