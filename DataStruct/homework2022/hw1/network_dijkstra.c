#include <stdio.h>
#include <stdlib.h>
#define MAXN 1000

struct Node{
    int id;
    int quantumMemories;
};

struct Link{
    int id;
    int end1;
    int end2;
    int channels;
};

struct Request{
    int id;
    int src;
    int dst;
    int path[MAXN];
    int len;
};

// input varinle
int nodeLen, linkLen, reqLen;
struct Node nodes[MAXN];
struct Link links[MAXN];
struct Request reqs[MAXN];

// dijkstra varible
int graph[MAXN][MAXN] = {0};
int parentNode[MAXN];

void dijkstra(int src, int dst);
void savePath(struct Request *req);
int checkMemory(int reqID);
void removeMemory(int reqID);
void initInput();

int main(){
    initInput();

    // start
    for(int i = 0; i < reqLen; i++)
    {
        dijkstra(reqs[i].src, reqs[i].dst);
        savePath(&reqs[i]);
    }

    int accReqsIDs[MAXN];
    int accReqLen = 0;
    for(int i = reqLen-1; i >= 0; i--)
    {
        if(checkMemory(reqs[i].id))
        {
            removeMemory(reqs[i].id);
            accReqsIDs[accReqLen] = reqs[i].id;
            accReqLen++;
        }
    }

    // show ans
    printf("%d\n", accReqLen);
    for(int i = 0; i < accReqLen; i++)
    {
        int id = accReqsIDs[i];
        printf("%d ", id);
        for(int j = reqs[id].len-1; j >= 0; j--)
            printf("%d ", reqs[id].path[j]);
        printf("\n");
    }

    return 0;
}

void initInput()
{
    // input
    scanf("%d %d %d", &nodeLen, &linkLen, &reqLen);
    for(int i = 0; i < nodeLen; i++)
        scanf("%d %d", &nodes[i].id, &nodes[i].quantumMemories);
    for(int i = 0; i < linkLen; i++)// link id start form 1
        scanf("%d %d %d %d", &links[i].id, &links[i].end1, &links[i].end2, &links[i].channels);
    for(int i = 0; i < reqLen; i++)
        scanf("%d %d %d", &reqs[i].id, &reqs[i].src, &reqs[i].dst);

    // init graph (save links id)
    for(int i = 0; i < nodeLen; i++)
        for(int j = 0; j < nodeLen; j++)
            graph[i][j] = -1;
    for(int i = 0; i < linkLen; i++)
    {
        graph[links[i].end1][links[i].end2] = links[i].id;
        graph[links[i].end2][links[i].end1] = links[i].id;
    }
    return;
}

void savePath(struct Request *req)
{
    int i = 0, id = req->dst;
    while(id != -1)
    {
        req->path[i] = id;
        id = parentNode[id];
        i++;
    }
    req->len = i;
    return;
}

int checkMemory(int reqID)
{
    int len = reqs[reqID].len;
    if(!len) return 0;
    if(nodes[reqs[reqID].path[0]].quantumMemories < 1 || nodes[reqs[reqID].path[len-1]].quantumMemories < 1) return 0;
    for(int i = 1; i < len-1; i++)
        if(nodes[reqs[reqID].path[i]].quantumMemories < 2) return 0;
    for(int i = 1; i < len; i ++)
        if(links[graph[reqs[reqID].path[i-1]][reqs[reqID].path[i]]].channels < 1) return 0;
    return 1;
}

void removeMemory(int reqID)
{
    int len = reqs[reqID].len;
    nodes[reqs[reqID].path[0]].quantumMemories--;
    nodes[reqs[reqID].path[len-1]].quantumMemories--;
    for(int i = 1; i < len-1; i++)
        nodes[reqs[reqID].path[i]].quantumMemories -= 2;
    for(int i = 1; i < len; i++)
        links[graph[reqs[reqID].path[i-1]][reqs[reqID].path[i]]].channels--;
    return;
}

void dijkstra(int src, int dst)
{
    // init
    int *distant = (int*)malloc(sizeof(int) * nodeLen);
    int *visited = (int*)malloc(sizeof(int) * nodeLen);
    for(int i = 0; i < nodeLen; i++)
    {
        parentNode[i] = -1;
        visited[i] = 0;
        distant[i] = 1e9;
    }

    //start
    parentNode[src] = -1;
    distant[src] = 0;

    for(int i = 0; i < nodeLen; i++)
    {
        int minDistant = 1e9, minNodeID = -1;

        for(int j = 0; j < nodeLen; j++)
        {
            if(!visited[j] && distant[j] < minDistant)
            {
                minDistant = distant[j];
                minNodeID = j;
            }
        }

        if(minNodeID == -1) return;
        if(minDistant == 1e9) return;

        visited[minNodeID] = 1;

        for(int j = 0; j < nodeLen; j++)
        {
            int linkID = graph[minNodeID][j];
            if(!visited[j] && linkID != -1 && minDistant + 1 < distant[j])
            {
                distant[j] = minDistant + 1;
                parentNode[j] = minNodeID;
            }
        }
    }
    return;
}
