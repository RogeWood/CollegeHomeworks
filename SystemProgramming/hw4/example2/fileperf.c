#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <uchar.h>
#include <time.h>
#include <ctype.h>
#include <sys/file.h>
#include <errno.h>

#define SIZE 1024

int main(int argc,char*argv[]){
	FILE*src=fopen(argv[1],"r");
	FILE*dst=fopen(argv[2],"w+");
	long bufSize;
	int wordlen=0,linelen=0;
	char line[1024];
	char word[100];
	char*buf;
	int c_int;
	int len;
	unsigned char c;
	//struct timespec t1,t2;
	//unbuffered
	if(strcmp(argv[3],"0")==0){
		bufSize=SIZE;
		buf=malloc(bufSize);
		setvbuf(src,buf,_IONBF,bufSize);
		setvbuf(dst,buf,_IONBF,bufSize);
	//line buffered
	}else if(strcmp(argv[3],"-1")==0){
		bufSize=SIZE;
		buf=malloc(bufSize);
		setvbuf(src,buf,_IOLBF,bufSize);
		setvbuf(dst,buf,_IOLBF,bufSize);
	//fully buffered
	}else{
		len=strlen(argv[3]);
		if(argv[3][len-1]=='B'){
			if(argv[3][len-2]=='M'){
				argv[3][len-2]='\0';
				bufSize=strtol(argv[3],NULL,10)*1024*1024;
				//printf("%ld\n",bufSize);
			}else if(argv[3][len-2]=='K'){
				argv[3][len-2]='\0';
				bufSize=strtol(argv[3],NULL,10)*1024;
				//printf("%ld\n",bufSize);
			}
		}else{
			bufSize=atoi(argv[3]);
		}
		buf=malloc(bufSize);
		setvbuf(src,buf,_IOFBF,bufSize);
		setvbuf(src,buf,_IOFBF,bufSize);
	}
	while((c_int=fgetc(src))!=EOF){
		c=(unsigned char)c_int;
		if(wordlen==0){
			if(isspace(c)){
				if(c=='\n'){
					fprintf(dst,"\n");
				}
				continue;
			}
			word[wordlen]=c;
			wordlen++;
		}else{
			if(isspace(c)){
				word[wordlen]='\0';
				if(wordlen+strlen(" ")+linelen+strlen("\n")>80){
					fprintf(dst,"\n");
					linelen=0;
					if(c=='\n'){
						fprintf(dst,"%s\n",word);
						linelen+=wordlen+1;
					}else{
						fprintf(dst,"%s",word);
						linelen+=wordlen;
					}
					wordlen=0;
				}else{
					if(linelen!=0){
						fprintf(dst," ");
					}
					if(c=='\n'){
						fprintf(dst,"%s\n",word);
						linelen=0;
					}else{	
						fprintf(dst,"%s",word);
						linelen+=wordlen+1;
					}
					wordlen=0;
				}
			}else{
				word[wordlen]=c;
				wordlen++;
			}
		}
	}
	if(wordlen!=0){
		word[wordlen]='\0';
		if(wordlen+strlen(" ")+linelen+strlen("\n")>80){
			fprintf(dst,"\n");
                        linelen=0;
                        fprintf(dst,"%s",word);
                        linelen+=wordlen;
                        wordlen=0;
                }else{
                        fprintf(dst," ");
                        fprintf(dst,"%s\n",word);
                        linelen+=wordlen;
                        wordlen=0;
                }

	}
	fclose(src);
	fclose(dst);
	return 0;
}
