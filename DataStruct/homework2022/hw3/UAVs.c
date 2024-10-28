#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define MAXN 1000
struct Node{
    int id;
    double x, y;
};

struct UAVs{
    int len;
    int nodes[MAXN];
};

struct Edge{
    int node1, node2;
    double distant;
};

int cmp(const void *a, const void *b)
{
    struct Edge *p = (struct Edge*)a, *q = (struct Edge*)b;
    if(p->distant == q->distant)
    {
        if(p->node1 == q->node1) return p->node2 > q->node2;
        else return p->node1 > q->node1;
    }
    return p->distant > q->distant;
}

int nodeLen, edgeLen = 0, uavLen = 0;
double B;
struct Edge *edgeArr;
struct Node *nodeArr;
struct UAVs uavArr[MAXN];

void input();
void check_UAV();
// kruskal
void kruskal();
int find_root(int id);
int *parent;// disjoint-sets forest
int treeLink[MAXN][MAXN] = {0};
// DFS
void DFS(int x);
double graph[MAXN][MAXN];
int *visited, *seq, step = 0;
double totalDistance = 0;

int main()
{
    input();
    kruskal();
    DFS(0);
    // for(int i = 0; i < nodeLen; i++)
    //     printf("%d ", seq[i]);
    // printf("\n");
    check_UAV();
    // print answer
    printf("%d" , uavLen);
    for(int i = 0; i < uavLen; i++)
    {
        printf("\n%d ", i);
        for(int j = 0; j < uavArr[i].len; j++)
            printf("%d ", uavArr[i].nodes[j]);
    }
    return 0;
}

void input()
{
    scanf("%d %lf", &nodeLen, &B);
    B *= 0.5;
    nodeArr = (struct Node*)malloc(sizeof(struct Node) * nodeLen);
    visited = (int*)malloc(sizeof(int) * nodeLen);
    seq     = (int*)malloc(sizeof(int) * nodeLen);
    parent = (int*)malloc(sizeof(int) * nodeLen); // disjoint-sets forest
    for(int i = 0; i < nodeLen; i++)
        scanf("%d %lf %lf", &nodeArr[i].id, &nodeArr[i].x, &nodeArr[i].y);

    edgeArr = (struct Edge*)malloc(sizeof(struct Edge) * nodeLen * nodeLen);
    for(int i = 0; i < nodeLen; i++)
        for(int j = i+1; j < nodeLen; j++)
        {
            edgeArr[edgeLen].node1 = nodeArr[i].id;
            edgeArr[edgeLen].node2 = nodeArr[j].id;
            double disX = nodeArr[i].x - nodeArr[j].x, disY = nodeArr[i].y - nodeArr[j].y;
            edgeArr[edgeLen].distant = sqrt(disX*disX + disY*disY);
            graph[nodeArr[i].id][nodeArr[j].id] = edgeArr[edgeLen].distant;
            graph[nodeArr[j].id][nodeArr[i].id] = edgeArr[edgeLen].distant;
            edgeLen++;
        }
    for(int j = 0; j < nodeLen; j++) visited[j] = 0;
    return;
}

int find_root(int id)
{
    return id == parent[id] ? id : (parent[id] = find_root(parent[id]));
}

void kruskal()
{
    // init
    for(int i = 0; i < nodeLen; i++) parent[nodeArr[i].id] = nodeArr[i].id; // 初始化 disjoint-sets，所有node 的 parent 指向自己
    qsort(edgeArr, edgeLen, sizeof(struct Edge), cmp);
    // for(int i = 0; i < edgeLen; i++)
    //     printf("%d %d %lf\n", edgeArr[i].node1, edgeArr[i].node2, edgeArr[i].distant);
    
    // start
    for(int i = 0, j = 0; i < nodeLen-1 && j < edgeLen; j++)
    {
        int root1 = find_root(edgeArr[j].node1), root2 = find_root(edgeArr[j].node2);
        // 產生環或超出油量，則捨棄。直到產生橋。
        if(root1 == root2) continue;
        // 有 bridge => 連接兩個 set
        // marge_set
        treeLink[edgeArr[j].node1][edgeArr[j].node2] = 1;
        treeLink[edgeArr[j].node2][edgeArr[j].node1] = 1;
        parent[root1] = root2;
        
        i++;
    }

    // to circle
    
    return;
}

void DFS(int x)
{
    seq[step++] = x;
    visited[x] = 1;
    for(int i = 0; i < nodeLen; i++)
        if(treeLink[x][i] && !visited[i])
            DFS(i);
    return;
}

void check_UAV()
{
    int i, len;
    double totalDistant = 0;
    uavArr[0].nodes[0] = 0;
    for(i = 1, len = 1; i < nodeLen; i++, len++)
    {
        // printf("%d %d : %lf %lf\n", seq[i-1], seq[i], graph[seq[i-1]][seq[i]], totalDistance + graph[seq[i-1]][seq[i]]);
        if(totalDistance + graph[seq[i-1]][seq[i]] >= B)
        {
            uavArr[uavLen].len = len; 
            totalDistance = 0;
            uavLen++;
            len = 0;
        }
        else totalDistance += graph[seq[i-1]][seq[i]];
        uavArr[uavLen].nodes[len] = seq[i];
    }

    uavArr[uavLen].len = len;
    uavLen++;
    return;
}