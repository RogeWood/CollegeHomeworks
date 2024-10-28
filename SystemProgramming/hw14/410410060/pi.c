#define _GNU_SOURCE
#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<semaphore.h>
#include <string.h>
#include <assert.h>
#include <signal.h>
#include <time.h>

int num_thread;
long total_loopcount;
double global_hit=0.0;
double global_loop=0.0;
pthread_mutex_t mutex;
long hit[16];
long loop[16];
int idx = 0;
struct timespec timeStart, timeEnd;

void sighandler(int signum){

    clock_gettime(CLOCK_MONOTONIC, &timeEnd); 

    double currHit = 0.0;
    double currLoop = 0.0;
    for(int i=0; i<idx; i++){
        currHit += hit[i];
        currLoop += loop[i];
    }
    double pi = (double)4*(currHit/currLoop);
    printf(" pi = %.8lf\n",pi);
    long diff = (timeEnd.tv_sec - timeStart.tv_sec) + 0.000000001 * (timeEnd.tv_nsec - timeStart.tv_nsec);

    if(diff < 1){
        exit(0);
    }
    timeStart = timeEnd;

    printf("pi = %.8lf\n",pi);
}

void thread(void* rand_buffer) {
    double point_x,point_y;
    long i;
    int j;
    long local_loopcount = total_loopcount/num_thread;
    double rand_d;

    pthread_mutex_lock(&mutex);
    long* local_hit = &hit[idx++];
    long* local_loop = &loop[idx++];
    pthread_mutex_unlock(&mutex);

    for(i=0;i<local_loopcount;i++) {    

        drand48_r(rand_buffer, &rand_d);
        point_x = rand_d;
        drand48_r(rand_buffer, &rand_d);
        point_y = rand_d;
        if( (point_x*point_x + point_y*point_y) < 1.0) {
            *local_hit+=1;
            *local_loop+=1;
        }
    }
    printf("hit = %ld\n", *local_hit);
    pthread_mutex_lock(&mutex);
    global_hit += *local_hit;
    global_loop += *local_loop;
    pthread_mutex_unlock(&mutex);
}


void main(int argc,char*argv[]) {
    pthread_t id[16];
    struct drand48_data* rand_buffer[16];
    int i;
    double pi = 0.0;
    double rand_d;

    total_loopcount=atol(argv[1]);
    num_thread=atoi(argv[2]);
    assert(num_thread < 256);

    signal(SIGINT, sighandler);

    pthread_mutex_init(&mutex,NULL);    
    for(i=0;i<num_thread;i++) {
        /*使用aligned_alloc分配記憶體，避免false sharing*/
        /*在這個例子中，「剛好」用malloc也會得到相同效果*/
        rand_buffer[i] = aligned_alloc(64, sizeof(struct drand48_data));
        srand48_r(rand(), rand_buffer[i]);
        drand48_r(rand_buffer[i], &rand_d);
        printf("@buffer = %p\n", rand_buffer[i]);
        printf("thread%d's seed = %f\n", i, rand_d);
        pthread_create(&id[i],NULL,(void *)thread,rand_buffer[i]);
    }

    for(i=0;i<num_thread;i++)
        pthread_join(id[i],NULL);

    pi = (double)4*(global_hit/total_loopcount);
    printf("pi = %.8lf\n",pi);
}
