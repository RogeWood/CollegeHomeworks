#include <stdio.h>
#include <stdlib.h>

#define InitSize 1024

int main(int argc, char *argv[]) {
    FILE *source_file = fopen(argv[1], "r+");
    FILE *dest_file = fopen(argv[2], "w+");
    long long int buffer_size = atoll(argv[3]);

    if(buffer_size == -1) { //linebuffered
        setvbuf(source_file, NULL, _IOLBF, InitSize);
        setvbuf(dest_file, NULL, _IOLBF, InitSize);
    }
    else if(buffer_size == 0) { // unbuffered
        setvbuf(source_file, NULL, _IONBF, InitSize);
        setvbuf(dest_file, NULL, _IONBF, InitSize);
    }
    else { // buffer size
        setvbuf(source_file, NULL, _IOFBF, buffer_size);
        setvbuf(dest_file, NULL, _IOFBF, buffer_size);
    }

    int inputChar; // fgetc retunn int
    int wordLen = 0, lineLen = 0;
    char wordBuf[1000];
    while(1) {
        inputChar = fgetc(source_file);
        if(inputChar == EOF) {
            wordBuf[wordLen] = '\0';
            if(wordBuf[wordLen-1] != '\n' && wordBuf[wordLen-1] != ' ')fprintf(dest_file, "%s", wordBuf);
            break;
        }
        // load char into wordbuffer
        wordBuf[wordLen++] = (char)inputChar;

        // write word(space, new line, tab)
        if(inputChar == ' ' || inputChar == '\n' || inputChar == '\t') {
            lineLen += wordLen;
            if(lineLen > 80) { // new line(over 80 character)
                fprintf(dest_file, "\n");
                lineLen = wordLen;
            }

            // write word
            wordBuf[wordLen] = '\0';
            fprintf(dest_file, "%s", wordBuf);
            wordLen = 0;
            if(inputChar == '\n') lineLen = 0;
        }
    }

    fclose(source_file);
    fclose(dest_file);
    return 0;
}