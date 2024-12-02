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
    vector<vector<unsigned int>> links(linklen, vector<unsigned int>(3)), flows(flowLen, vector<unsigned int>(4)); // link: LinkID, Node1, Node2,  flows: FlowID, Src, Dst, FlowSize
    for(int i = 0; i < linklen; i++) cin >> links[i][0] >> links[i][1] >> links[i][2];
    for(int i = 0; i < flowLen; i++) cin >> flows[i][0] >> flows[i][1] >> flows[i][2] >> flows[i][3];
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
    show_answer(nodeLen, nodes, dsts);

    return 0;
}


void BFS(vector<Node*>& nodes, unsigned int start, vector<bool>& visited)
{
    queue<unsigned int> que;
    que.push(start);
    visited[start] = 1;
    while(que.size())
    {
        unsigned int id = que.front(); // get current node id

        for(auto nextId: nodes[id]->neighbors) // add next node
        {
            if(!visited[nextId])
            {
                que.push(nextId);
                visited[nextId] = 1;
                if(isTypeOfSDN = dynamic_cast<SDN_Node*>(nodes[nextId])) // nextId is SDN node
                    isTypeOfSDN->routingTable.insert({start, {{id, 1}}});
                else if(isTypeOfOSPF = dynamic_cast<OSPF_Node*>(nodes[nextId])) // next is OSPF node
                    isTypeOfOSPF->routingTable.insert({start, id});
            }
        }
        que.pop();
    }
    return;
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
                if(d == isTypeOfSDN->id) // dst is self
                {
                    cout << d << ' ' << d << " 100%"<< endl;
                    continue;
                }
                cout << d << ' ';
                for(auto t: isTypeOfSDN->routingTable[d])
                {
                    cout << t.first << ' '  << (int)(t.second * 100) << "% ";
                }
                cout << endl;
            }
        }
        else if(isTypeOfOSPF = dynamic_cast<OSPF_Node*>(nodes[i])) // is OSPF node
        {
            for(auto d : dsts)
            {
                if(d == isTypeOfOSPF->id) // dst is self
                {
                    cout << d << ' ' << d << endl;
                    continue;
                }
                cout << d << ' ' << isTypeOfOSPF->routingTable[d] << endl;
            }
        }
    }
    return;
}
