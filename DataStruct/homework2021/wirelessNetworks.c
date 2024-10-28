#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct{
  int ID;
  int x;
  int y;
}Nodes;

typedef struct{
  int ID;
  int End1;
  int End2;
}Links;

double distantPower3(Nodes a, Nodes b);
int sinrCheck(int linkID);
void addLink(int linkID);
void deletLink(int linkID);
void selectLink();
int setAns();
void findAnsLink();

double **sortLink;
Nodes nodes[100005];
Links links[100005];
int visited[100005] = {0};// nodes is sended or recived
int nodes_n, links_n, power, noise;

int addedLinkID[100005];
int ansLink[100005];
int len = 0;
int maxlen = 0;

int cmpBig (const void *pa, const void *pb)
{
  const double *a = *(const double **)pa;
  const double *b = *(const double **)pb;
  return b[1] - a[1];
}

int cmpSmall (const void *pa, const void *pb)
{
  const double *a = *(const double **)pa;
  const double *b = *(const double **)pb;
  return a[1] - b[1];
}

int main()
{
  // input
  scanf("%d %d %d %d", &nodes_n, &links_n, &power, &noise);
  for(int i = 0; i < nodes_n; i++)
    scanf("%d %d %d", &nodes[i].ID, &nodes[i].x, &nodes[i].y);

  sortLink = (double **)malloc(links_n *sizeof(double*));
  for(int i = 0; i < links_n; i++)
    sortLink[i] = (double*)malloc(2 * sizeof(double));

  int index = 0;
  for(int i = 0; i < links_n; i++)
  {
    int id, end1, end2;
    scanf("%d %d %d", &id, &end1, &end2);

    if(1.0 * power /(noise + distantPower3(nodes[end1], nodes[end2])) >= 0.00025)
    {
      // printf("%d\n", id);
      links[index].ID = id;
      links[index].End1 = end1;
      links[index].End2 = end2;
      sortLink[index][0] = index;
      sortLink[index][1] = index;
      index++;
    }
  }
  links_n = index;

  // first: greedy
  findAnsLink();

  // second: Link length
  for(int i = 0; i < links_n; i++)
    sortLink[i][1] = distantPower3(nodes[links[(int)sortLink[i][0]].End1], nodes[links[(int)sortLink[i][0]].End2]);
  findAnsLink();

  // third: the sum of all node and sendNode length
  for(int i = 0; i < links_n; i++)
  {
    double sum = 0;
    for(int j = 0; j < nodes_n; j++)
      sum += distantPower3(nodes[links[(int)sortLink[i][0]].End1], nodes[j]);
    sortLink[i][1] = sum;
  }
  findAnsLink();

  // fourth: the sum of all node and sendNode length / Link length
  for(int i = 0; i < links_n; i++)
  {
    double linkLength = distantPower3(nodes[links[(int)sortLink[i][0]].End1], nodes[links[(int)sortLink[i][0]].End2]);
    sortLink[i][1] = sortLink[i][1] / linkLength;
  }
  findAnsLink();

  // print answer
  printf("%d\n", maxlen);
  for(int i = 0; i < maxlen; i++)
    printf("%d %d %d\n", links[ansLink[i]].ID, links[ansLink[i]].End1, links[ansLink[i]].End2);
  return 0;
}

void findAnsLink()
{
  qsort(sortLink, links_n, sizeof(sortLink[0]), cmpSmall);
  selectLink();
  if(len > maxlen) maxlen = setAns();

  qsort(sortLink, links_n, sizeof(sortLink[0]), cmpBig);
  selectLink();
  if(len > maxlen) maxlen = setAns();
  return;
}
int setAns()
{
  for(int i = 0; i < len; i++)
    ansLink[i] = addedLinkID[i];
  return len;
}
void selectLink()
{
  //init array
  for(int i = 0; i < links_n; i++)
  {
    addedLinkID[i] = 0;
    visited[i] = 0;
  }
  len = 0;

  for(int i = 0; i < links_n; i++)
  {
    if(!visited[links[(int)sortLink[i][0]].End1] && !visited[links[(int)sortLink[i][0]].End2]) // node never select
    {
      // printf("visited: %d \n", (int)sortLink[i][0]);
      addLink((int)sortLink[i][0]);
      for(int j = 0; j < len; j++) // check every node sinr > 1
      {
        if(!sinrCheck(addedLinkID[j]))
        {
          deletLink((int)sortLink[i][0]);
          break;
        }
      }
    }
  }
  // for(int i = 0; i < links_n; i++)
  // printf("id: %d   dis: %lf\n", (int)sortLink[i][0], sortLink[i][1]);
  // for(int i = 0; i < len; i++)
  //   printf("link: %d\n", addedLinkID[i]);
  return;
}
int sinrCheck(int linkID)
{
  double dl3 = distantPower3(nodes[links[linkID].End1], nodes[links[linkID].End2]); // d l' l ^3
  double sinr = 1.0 * power / dl3; //分母

  if(sinr < 1) return 0;
  double sigma = 0; //分子(干擾)
  for(int i = 0; i < len; i++)
  {
    int id = addedLinkID[i];
    if(id != linkID)
    {
      double dll3 = distantPower3(nodes[links[id].End1], nodes[links[linkID].End2]);
      sigma += 1.0 * power / dll3;
    }
  }
  sigma += noise;
  sinr = sinr / sigma;
  if(sinr > 1) return 1;
  return 0;
}

double distantPower3(Nodes a, Nodes b) // count nodes distant^3
{
  int x1 = a.x, y1 = a.y, x2 = b.x, y2 = b.y;
  double n = sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
  return n * n * n;
}

void addLink(int linkID)
{
  addedLinkID[len] = linkID;
  len++;
  visited[links[linkID].End1] = 1;
  visited[links[linkID].End2] = 1;
  return;
}

void deletLink(int linkID)
{
  addedLinkID[len-1] = 0;
  len--;
  visited[links[linkID].End1] = 0;
  visited[links[linkID].End2] = 0;
  return;
}
