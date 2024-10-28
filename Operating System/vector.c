#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int size; //vector size
    int *data; //data array
    int cap; //vector capacity
    int len;
}Vector;

//Vector function
void creat_vector(Vector *p) {
    if(p) { //init vector
        p->data = (int*)malloc(2 * sizeof(int));
        p->size = 0;
        p->cap = 2;
    }
    return;
}

void delete_vector(Vector *v) {
    if(v) {
        free(v->data);
    }
}

void push_back_vector(Vector *v, int x) {
    if(v) {//when capacity less size
        if(v->cap < v->size) {//2n to realloc
            v->data = (int*)realloc(v->data, sizeof(*(v->data)) * 2 * (v->cap));
            v->cap = 2 * (v->cap);
        }
        //push number
        v->size += 1;
        v->data[v->size - 1] = x;
    }
}

int pop_vector(Vector *v) {
    if(v && v->size > 0) {
        int n = v->data[v->size - 1]; //save value
        v->data[v->size - 1] = 0; //pop
        v->size -= 1;
        return n;
    }
    return -1; //vector[size-1] is NULL
}

int main() {
    Vector v;
    creat_vector(&v);
    push_back_vector(&v, 1);
    push_back_vector(&v, 2);
    push_back_vector(&v, 3);
    push_back_vector(&v, 4);
    push_back_vector(&v, 5);
    return 0;
}