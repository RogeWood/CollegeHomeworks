#include <stdio.h>
#include <stdlib.h>
#define MAXN 1000

unsigned long MurmurOAAT32(char *key)
{
    unsigned long h = 3323198485ul;
    for(;*key;++key)
    {
        h ^= *key;
        h *= 0x5bd1e995;
        h ^= h >> 15;
    }
    return h;
}

typedef struct Node{
    struct Node *left, *right;
    unsigned long val;
}Node;

int strs, strMaxLen, ansLen;
int ansArr[MAXN];
char *strArr[MAXN];
Node *nodeArr[MAXN];
void init();
Node* BuildTree(int len);
void checkNode(Node *node, int level, int index);
Node* BuildNode(unsigned long val, Node* left, Node* right);

int main()
{
    init();
    Node *head = BuildTree(strs); // build tree
    //start
    ansLen = 0;
    checkNode(head, 0, 0);

    printf("2 %d\n", ansLen);
    for(int i = 0; i < ansLen; i++)
        printf("%s\n", strArr[ansArr[i]]);
    return 0;
}

void init()
{
    // init
    scanf("%d %d", &strs, &strMaxLen);
    // input
    for(int i = 0; i < strs; i++)
    {
        char *s = (char*)malloc(sizeof(char) * strMaxLen);
        scanf("%s", s);
        strArr[i] = s; // save string
        Node *node = BuildNode(MurmurOAAT32(s), NULL, NULL); // build node
        nodeArr[i] = node;
    }
}

Node* BuildNode(unsigned long val, Node* left, Node* right)
{
    Node *node = (Node*)malloc(sizeof(Node));
    node->left = left;
    node->right = right;
    node->val = val;
    return node;
}

Node* BuildTree(int len)
{
    if(!len) return NULL; // length = 0 return
    while(len > 1) // merge until one node in level
    {
        if(len % 2) // if is odd, copy last to end
        {
            nodeArr[len] = nodeArr[len-1];
            len++;
        }
        for(int i = 0, k = 0; i < len; i += 2, k++) // merge two node in same level
        {
            char s[MAXN];
            sprintf(s, "%lu", nodeArr[i]->val + nodeArr[i+1]->val); // unsigned long to string
            nodeArr[k] = BuildNode(MurmurOAAT32(s), nodeArr[i], nodeArr[i+1]);
        }
        len /= 2;
    }
    return nodeArr[0]; // return head
}

void checkNode(Node *node, int level, int index)
{
    if(!node) return;
    printf("1 %d %d\n", level, index); // query sever node
    fflush(NULL);
    unsigned long val;
    scanf("%lu", &val);

    if(val == node->val) return; // same value

    if(node->left || node->right) // not last level
    {
        checkNode(node->left, level+1, index*2);
        if(node->left != node->right) checkNode(node->right, level+1, index*2+1); // node copyed node
        return;
    }

    if(index < strs) ansArr[ansLen++] = index; // find wrong node
    return;
}
