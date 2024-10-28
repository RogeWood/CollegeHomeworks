#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc,char **argv){
    
    FILE *source_file=fopen(argv[1],"r+");
    FILE *dest_file=fopen(argv[2],"w+");
    int buf_size=atoi(argv[3]);
    
    // unbuffered
    if(buf_size == 0){
        setvbuf(source_file,NULL,_IONBF,1024);
        setvbuf(dest_file,NULL,_IONBF,1024);
    }
    // linebuffered
    else if(buf_size == -1){
        setvbuf(source_file,NULL,_IOLBF,1024);
        setvbuf(dest_file,NULL,_IOLBF,1024);    
    }
    // buffer size
    else{
        setvbuf(source_file,NULL,_IOFBF,buf_size);
        setvbuf(dest_file,NULL,_IOFBF,buf_size);
    }
    
    int lineLen=0,wordLen=0;
    int inputChar;
    char wordBuf[4096];

    while(1){
        inputChar = getc(source_file);
        if(inputChar == EOF){
            fwrite(wordBuf,wordLen,1,dest_file);
            break;
        }
        wordBuf[wordLen]=inputChar;
        wordLen++;
        
        // end of a word
        if(inputChar == ' ' || inputChar == '\n' || inputChar == '\t'){
            lineLen+=wordLen;
            
            if(lineLen > 80){
                fprintf(dest_file,"\n");
                lineLen=wordLen;
            }
            
            fwrite(wordBuf,wordLen,1,dest_file);
            wordLen=0;
            if(inputChar == '\n'){
                lineLen=0;
            }
        }
        
    }
    fclose(source_file);
    fclose(dest_file);
    
    return 0;
}
