#include <iostream>
#include <vector>
#include <map>
#include <queue>
 
using namespace std;
 
class Node {
    private:
    public:
        unsigned int id;
        vector<unsigned int> neighbors;
        map<unsigned int, unsigned int> level; // dst, level

        virtual ~Node(){};
        Node(){id = -1;};
};
 
class SDN_Node : public Node {
    private:
    public:
        // destination ID, <next nodes’ IDs, portions>
        map<unsigned int, vector<pair<unsigned int, double>>>  routingTable;
        SDN_Node(){};
        SDN_Node(unsigned int index){id = index;};
};
class OSPF_Node : public Node{
    private:
    public:
        // destination ID, next node's ID
        map<unsigned int, unsigned int> routingTable;
        OSPF_Node(){};
        OSPF_Node(unsigned int index){id = index;};
};
 
void BFS(vector<Node*>& nodes, unsigned int id, vector<bool>& visited);
void show_answer(int nodeLen, vector<Node*>& nodes, vector<unsigned int>& dsts);
void expand_SDN_link(vector<Node*>& nodes, unsigned int sdnID, vector<unsigned int>& dsts);

SDN_Node *isTypeOfSDN = nullptr;
OSPF_Node *isTypeOfOSPF = nullptr;
int main()
{
    // init
    //#Nodes #SDN_Nodes #Dsts #Links #Pairs
    int nodeLen, SDNLen, dstLen, linklen, flowLen;
    cin >> nodeLen >> SDNLen >> dstLen >> linklen >> flowLen;
    vector<unsigned int> SDNs(SDNLen), dsts(dstLen);
    for(int i = 0; i < SDNLen; i++) cin >> SDNs[i];
    for(int i = 0; i < dstLen; i++) cin >> dsts[i];
    vector<vector<unsigned int>> links(linklen, vector<unsigned int>(3)), flows(flowLen, vector<unsigned int>(4));
    for(int i = 0; i < linklen; i++) cin >> links[i][0] >> links[i][1] >> links[i][2]; // link: LinkID, Node1, Node2
    for(int i = 0; i < flowLen; i++) cin >> flows[i][0] >> flows[i][1] >> flows[i][2] >> flows[i][3]; // flows: FlowID, Src, Dst, FlowSize
    vector<Node*> nodes; // include SDN, OSPF node
    for(int i = 0, j = 0; i < nodeLen; i++)
    {
        if(j < SDNLen && (unsigned int)i == SDNs[j]) // store SDN node
        {
            nodes.push_back(new SDN_Node(i));
            j++;
        }
        else nodes.push_back(new OSPF_Node(i)); // store OSPF node
    }
 
    for(int i = 0; i < linklen; i++) // build graph
    {
        nodes[links[i][1]]->neighbors.push_back(links[i][2]);
        nodes[links[i][2]]->neighbors.push_back(links[i][1]);
    }
    // init finish
    // start
 
    for(auto d: dsts) // iterator all dsts
    {
        vector<bool> visited(nodeLen, 0);
        BFS(nodes, d, visited);
    }

    for(auto s: SDNs) // add sdn node link 
    {
        expand_SDN_link(nodes, s, dsts);
    }
    show_answer(nodeLen, nodes, dsts);
 
    return 0;
}
 
 
void BFS(vector<Node*>& nodes, unsigned int start, vector<bool>& visited)
{
    queue<unsigned int> que;
    que.push(start);
    visited[start] = 1;
    unsigned int level = 0;
    nodes[start]->level.insert({start, level});
    while(que.size())
    {
        unsigned int id = que.front(); // get current node id
 
        for(auto nextId: nodes[id]->neighbors) // add next node
        {
            if(!visited[nextId])
            {
                que.push(nextId);
                visited[nextId] = 1;
                nodes[nextId]->level.insert({start, level});
                if(isTypeOfSDN = dynamic_cast<SDN_Node*>(nodes[nextId])) // nextId is SDN node
                    isTypeOfSDN->routingTable.insert({start, {{id, 1}}});
                else if(isTypeOfOSPF = dynamic_cast<OSPF_Node*>(nodes[nextId])) // next is OSPF node
                    isTypeOfOSPF->routingTable.insert({start, id});
            }
        }
        que.pop();
        level++;
    }
    return;
}

void expand_SDN_link(vector<Node*>& nodes, unsigned int sdnID, vector<unsigned int>& dsts)
{
    SDN_Node& SDNnode = *(SDN_Node*)nodes[sdnID];
    for(auto d: dsts)
    {
        int count = 0;
        SDNnode.routingTable[d].clear();
        for(auto nextId: SDNnode.neighbors)
        {
            if(nodes[nextId]->level[d] <= SDNnode.level[d])
            {
                SDNnode.routingTable[d].push_back({nextId, 1});
                // cout << "link!!! " << sdnID << ' ' << nextId << endl;
                count++;
            }
            else
                SDNnode.routingTable[d].push_back({nextId, 0});
        }
        for(auto& t: SDNnode.routingTable[d])
        {
            t.second = t.second / count;
        }
    }
}
void show_answer(int nodeLen, vector<Node*>& nodes, vector<unsigned int>& dsts)
{
    for(int i = 0; i < nodeLen; i++)
    {
        cout << i << endl;
        if(isTypeOfSDN = dynamic_cast<SDN_Node*>(nodes[i])) // is SDN node
        {
            for(auto d : dsts)
            {
                cout << d << ' ';
                if(d == isTypeOfSDN->id) // dst is self
                {
                    cout << d << " 100%"<< endl;
                    continue;
                }
                else
                {
                    for(auto t: isTypeOfSDN->routingTable[d])
                    {
                        cout << t.first << ' '  << (int)(t.second * 100) << "% ";
                    }
                    cout << endl;
                }
                // cout << "level: " << nodes[i]->level[d] << endl;
            }
        }
        else if(isTypeOfOSPF = dynamic_cast<OSPF_Node*>(nodes[i])) // is OSPF node
        {
            for(auto d : dsts)
            {
                cout << d << ' ';
                if(d == isTypeOfOSPF->id) // dst is self
                    cout << d << endl;
                else cout << isTypeOfOSPF->routingTable[d] << endl;
                // cout << "level: " << nodes[i]->level[d] << endl;
            }
        }
    }
    return;
}
// 15 3 1 28 3
// 2 9 14
// 0
// 0 0 5
// 1 0 10
// 2 0 12
// 3 0 14
// 4 1 2
// 5 1 3
// 6 1 4
// 7 2 3
// 8 2 10
// 9 2 11
// 10 3 4
// 11 3 6
// 12 3 7
// 13 4 8
// 14 4 9
// 15 5 6
// 16 5 7
// 17 5 9
// 18 5 10
// 19 5 14
// 20 6 7
// 21 6 10
// 22 7 9
// 23 8 9
// 24 9 13
// 25 10 12
// 26 11 12
// 27 13 14
// 0 1 0 3
// 1 2 0 4
// 2 3 0 5

// https://stackoverflow.com/questions/26208918/vector-that-can-have-3-different-data-types-c
// https://yayaya6d.pixnet.net/blog/post/350055421-c%2B%2B%E5%90%84%E7%A8%AE%E9%9B%9C%E8%AB%87--%E8%99%9B%E6%93%AC%E5%87%BD%E5%BC%8F%28virtual-function%29