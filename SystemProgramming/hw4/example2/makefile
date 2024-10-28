SHELL=/bin/bash

all: fileperf

fileperf: fileperf.c
	gcc -g -z lazy -pthread fileperf.c -o fileperf

clean:
	rm fileperf
