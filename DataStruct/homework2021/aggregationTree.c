#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int size; //vector size
    int *data; //data array
    int cap; //vector capacity
    int len;
}Vector;

typedef struct{
    int size; //Queue size
    int *data; //data array
    int head;
    int cap; //Queue capacity
    int len; //Queue length
}Queue;

void creat_vector(Vector *p);
void delete_vector(Vector *v);
void push_back_vector(Vector *v, int x);
int pop_vector(Vector *v);

void creat_queue(Queue *p);
void delete_queue(Queue *q);
void push_queue(Queue *q, int val);
int pop_queue(Queue *q);
int front_queue(Queue *q);

int nodes, links, packet_size, totalCost = 0;
void BFS(Queue *que, Vector *graph, Vector *tree, Vector *linkID, int *book)
{
    while(que->len > 0)
    {
        int parent = front_queue(que);
        for(int j = 0; j < graph[parent].size; j++)
        {
            int nextNode = graph[parent].data[j];
            if(book[nextNode] == 0) //nextNode not passed
            {
                push_back_vector(&tree[parent], nextNode); //set next node as child
                linkID[nextNode].data[0] = parent; //save next node parent
                push_queue(que, nextNode); //push next node in queue
                book[nextNode] = 1; //passed
            }
        }

        pop_queue(que);
        book[parent] = 1; //node Passed
    }
}

int cost_count(Vector *tree, int node, Vector *weight, int packet_size) //DFS find cost
{
    int wei = weight->data[node], cost;

    for(int i = 0; i < tree[node].size; i++) //sum of children weight
    wei += cost_count(tree, tree[node].data[i], weight, packet_size);

    if(node) //is not root
    cost = (wei + packet_size-1)/packet_size;
    else cost = 0;

    //printf("node %d cost: %d\n", node, cost);
    totalCost += cost;
    return wei;
}

int main()
{
    //input
    scanf("%d %d %d", &nodes, &links, &packet_size);

    Vector weight;
    creat_vector(&weight);
    for(int i = 0, w, node_ID; i < nodes; i++)
    {
        scanf("%d %d", &node_ID, &w);
        push_back_vector(&weight, w);
    }
    Vector graph[nodes];
    for(int i = 0; i < nodes; i++) creat_vector(&graph[i]);
    for(int i = 0, link_ID, a, b; i < links; i++)
    {
        scanf("%d %d %d", &link_ID, &a, &b);
        push_back_vector(&graph[a], b);
        push_back_vector(&graph[b], a);
    }


    // init value
    int book[3000] = {0}; //1: passed, 0: not passed

    Vector linkID[nodes]; //save nodes parent
    for(int i = 0; i < nodes; i++)
    {
        creat_vector(&linkID[i]);
        push_back_vector(&linkID[i], 0);
    }
    Vector tree[nodes]; //build tree
    for(int i = 0; i < nodes; i++)
    {
        creat_vector(&tree[i]);
    }

    Queue que;
    creat_queue(&que);
    push_queue(&que , 0); //push root


    //bfs
    book[0] = 1; //set root passed
    BFS(&que, graph, tree, linkID, book);

    //count cost
    cost_count(tree, 0, &weight, packet_size);


    //print
    printf("%d %d\n", nodes, totalCost);
    for(int i = 0; i < nodes; i++)
    printf("%d %d\n", i, linkID[i].data[0]);

    return 0;
}



//Vector function
void creat_vector(Vector *p)
{
    if(p){ //init vector
        p->data = (int*)malloc(2 * sizeof(int));
        p->size = 0;
        p->cap = 2;
    }
    return;
}

void delete_vector(Vector *v)
{
    if(v)
    {
        free(v->data);
    }
}

void push_back_vector(Vector *v, int x)
{
    if(v) //when capacity less size
    {
        if(v->cap < v->size) //2n to realloc
        {
            v->data = (int*)realloc(v->data, sizeof(*(v->data)) * 2 * (v->cap));
            v->cap = 2 * (v->cap);
        }
        //push number
        v->size += 1;
        v->data[v->size - 1] = x;
    }
}

int pop_vector(Vector *v)
{
    if(v && v->size > 0)
    {
        int n = v->data[v->size - 1]; //save value
        v->data[v->size - 1] = 0; //pop
        v->size -= 1;
        return n;
    }
    return -1; //vector[size-1] is NULL
}

void creat_queue(Queue *p)
{
    //Queue *p = (Queue*)malloc(sizeof(Queue));
    if(p){ //init Queue
        p->data = (int*)malloc(2 * sizeof(int));
        p->head = 0;
        p->size = 0;
        p->len = 0;
        p->cap = 2;
    }
    return;
}

void delete_queue(Queue *q)
{
    if(q)
    {
        free(q->data);
    }
}

void push_queue(Queue *q, int val)
{
    if(q) //when capacity less size
    {
        if(q->cap < q->size) //2n to realloc
        {
            q->data = (int*)realloc(q->data, sizeof(*(q->data)) * 2 * (q->cap));
            q->cap = 2 * (q->cap);
        }

        q->size += 1;
        q->len += 1;
        q->data[q->size - 1] = val;
    }
}

int pop_queue(Queue *q)
{
    if(q && q->len > 0)
    {
        int temp = q->data[q->head];
        q->head += 1;
        q->len -= 1;
        return temp;
    }

    return -1; //Queue[size-1] is NULL
}

int front_queue(Queue *q)
{
    if(q) return q->data[q->head];
    return -1; //Queue is NULL
}
