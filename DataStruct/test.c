#include <stdio.h>
#include <stdlib.h>
#include <math.h>

struct Node{
    int id;
    double x, y;
};

struct UAVs{
    int id;
    int *nodes;
};

struct Edge{
    int node1, node2;
    double distant;
};

int cmp(const void *a, const void *b)
{
    struct Edge *p = (struct Edge*)a, *q = (struct Edge*)b;
    return p->distant < q->distant;
}
int nodeLen, B, edgeLen = 0;
struct Edge *edgeArr;
struct Node *nodeArr;

void Kruskal();

//// disjoint-sets
int find_root(int id);
void marge_set(int id1, int id2, double distant);
int *parent;
double *forestDistant;

int main()
{
    // input
    scanf("%d %d", &nodeLen, &B);
    nodeArr = (struct Node*)malloc(sizeof(struct Node) * nodeLen);
    parent = (int*)malloc(sizeof(int) * nodeLen); // disjoint-sets forest
    forestDistant = (double*)malloc(sizeof(double) * nodeLen);
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
            edgeLen++;
        }

    Kruskal();
    // for(int i = 0; i < nodeLen; i++)
    // {
    //     printf("node: %d  root: %d\n", i, find_root(i));
    // }
    return 0;
}

int find_root(int id)
{
    return id == parent[id] ? id : (parent[id] = find_root(parent[id]));
}

void marge_set(int id1, int id2, double distant)
{
    parent[find_root(id1)] = find_root(id2);
    forestDistant[find_root(id2)] += distant;
    printf("root: %d %d  dis:%lf\n", id1, id2, forestDistant[find_root(id2)]);
    return;
}

void Kruskal()
{
    // init
    for(int i = 0; i < nodeLen; i++) parent[i] = i; // 初始化 disjoint-sets，所有node 的 parent 指向自己
    for(int i = 0; i < nodeLen; i++) forestDistant[i] = 0;
    qsort(edgeArr, edgeLen, sizeof(struct Edge), cmp);

    // start
    for(int i = 0, j = 0; i < nodeLen-1 && j < edgeLen; i++, j++)
    {
        int root1 = find_root(edgeArr[j].node1), root2 = find_root(edgeArr[j].node2);
        // 產生環或超出由量，則捨棄。直到產生橋。
        while(root1 == root2 || forestDistant[root1] + forestDistant[root2] > B)
        {
            j++;
            root1 = find_root(edgeArr[j].node1), root2 = find_root(edgeArr[j].node2);
        }
        // 有 bridge => 連接兩個 set
        marge_set(root1, root2, forestDistant[root1] + forestDistant[root2] + edgeArr[j].distant);

        printf("start: %d end: %d  w: %lf\n", edgeArr[j].node1, edgeArr[j].node1, edgeArr[j].distant);
    }
    return;
}
