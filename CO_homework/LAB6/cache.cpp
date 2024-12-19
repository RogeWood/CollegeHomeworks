#include <iostream>
#include <vector>
#include <unordered_map>
#include <queue>
#include <fstream>
#include <sstream>

using namespace std;

struct CacheLine {
    bool valid;
    unsigned int tag;
    bool dirty;
    int order; // For LRU
};

class CacheSimulator {
private:
    int cacheSize, blockSize, associativity, numSets;
    string replacePolicy;
    string fileName;
    vector<vector<CacheLine>> cache;
    int demandFetch, cacheHit, cacheMiss, readData, writeData, bytesFromMem, bytesToMem;

    int getIndex(unsigned int address) {
        return (address / blockSize) % numSets;
    }

    unsigned int getTag(unsigned int address) {
        return (address / blockSize) / numSets;
    }

    void accessCache(int label, unsigned int address) {
        int index = getIndex(address);
        unsigned int tag = getTag(address);
        bool hit = false;

        // Search for a hit
        for (auto& line : cache[index]) {
            if (line.valid && line.tag == tag) {
                hit = true;
                cacheHit++;
                if (replacePolicy == "LRU") line.order = 0; // Reset order for LRU
                break;
            }
        }

        if (!hit) {
            // Cache miss handling
            cacheMiss++;
            bytesFromMem += blockSize;

            // Find a replacement line
            int replaceIdx = -1;
            if (replacePolicy == "FIFO") {
                replaceIdx = 0; // Replace the first line
            } else if (replacePolicy == "LRU") {
                int maxOrder = -1;
                for (int i = 0; i < cache[index].size(); i++) {
                    if (cache[index][i].order > maxOrder) {
                        maxOrder = cache[index][i].order;
                        replaceIdx = i;
                    }
                }
            }

            // Replace the cache line
            if (cache[index][replaceIdx].valid && cache[index][replaceIdx].dirty) {
                bytesToMem += blockSize;
            }
            cache[index][replaceIdx] = {true, tag, (label == 1), 0};
        }

        // Update orders for LRU
        if (replacePolicy == "LRU")
        {
            for (auto& line : cache[index]) {
                if (line.valid) line.order++;
            }
        }

        if (label == 0) readData++;
        else if (label == 1) writeData++;
    }

public:
    CacheSimulator(int cacheSizeKB, int blockSizeB, int assoc, const string& policy, const string& filename)
        : cacheSize(cacheSizeKB * 1024), blockSize(blockSizeB),
          associativity(assoc), replacePolicy(policy), fileName(filename),
          demandFetch(0), cacheHit(0), cacheMiss(0), readData(0),
          writeData(0), bytesFromMem(0), bytesToMem(0) {
        numSets = cacheSize / (blockSize * associativity);
        cache.resize(numSets, vector<CacheLine>(associativity, {false, 0, false, 0}));
    }

    void simulate() {
        ifstream file(fileName);
        string line;
        while (getline(file, line)) {
            stringstream ss(line);
            int label;
            unsigned int address;
            ss >> label >> hex >> address;

            demandFetch++;
            accessCache(label, address);
        }
    }

    void printResults() const {
        cout << "Input file: " << fileName << endl;
        cout << "Demand fetch: " << demandFetch << endl;
        cout << "Cache hit: " << cacheHit << endl;
        cout << "Cache miss: " << cacheMiss << endl;
        cout << "Miss rate: " << static_cast<double>(cacheMiss) / demandFetch << endl;
        cout << "Read data: " << readData << endl;
        cout << "Write data: " << writeData << endl;
        cout << "Bytes from memory: " << bytesFromMem << endl;
        cout << "Bytes to memory: " << bytesToMem << endl;
    }
};

int main(int argc, char* argv[]) {
    if (argc != 6) {
        cerr << "Usage: ./cache [cache size] [block size] [associativity] [replace policy] [file name]" << endl;
        return 1;
    }

    int cacheSize = stoi(argv[1]);
    int blockSize = stoi(argv[2]);
    string assocStr = argv[3];
    string replacePolicy = argv[4];
    string filename = argv[5];

    int associativity = (assocStr == "f") ? cacheSize * 1024 / blockSize : stoi(assocStr);
    CacheSimulator simulator(cacheSize, blockSize, associativity, replacePolicy, filename);
    simulator.simulate();
    simulator.printResults();

    return 0;
}
