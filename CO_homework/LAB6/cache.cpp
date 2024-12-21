#include <iostream>
#include <fstream>
#include <vector>
#include <unordered_map>
#include <deque>
#include <cmath>
#include <iomanip>
#include <string>
#include <algorithm>
using namespace std;

struct CacheBlock {
    bool valid = false;
    unsigned int tag = 0;
    bool dirty = false; // Dirty bit to track modifications
    int lru_order = 0; // For LRU replacement policy
};

class Cache {
private:
    int cache_size;
    int block_size;
    int associativity;
    string replace_policy;
    int num_sets;
    vector<vector<CacheBlock>> cahceBlocks_vector;
    int demand_fetch = 0;
    int cache_hit = 0;
    int cache_miss = 0;
    int read_data = 0;
    int write_data = 0;
    int bytes_from_memory = 0;
    int bytes_to_memory = 0;

    int getIndex(unsigned int address) {
        return (address / block_size) % num_sets;
    }

    unsigned int getTag(unsigned int address) {
        return (address / block_size) / num_sets;
    }

    void updateLRU(vector<CacheBlock>& cacheBlocks, int hit_index) {
        // update order
        for (auto& block : cacheBlocks) {
            if (block.valid) {
                block.lru_order++;
            }
        }
        cacheBlocks[hit_index].lru_order = 0;
    }

    void updateFIFO(vector<CacheBlock>& cacheBlocks) {
        // pop front, push back
        for (int i = 0; i < cacheBlocks.size()-1; i++) {
            // swap
            CacheBlock block_t = cacheBlocks[i];
            cacheBlocks[i] = cacheBlocks[i+1];
            cacheBlocks[i+1] = block_t;
        }
    }

    int findLRUIndex(const vector<CacheBlock>& cacheBlocks) {
        int max_lru = -1, lru_index = -1;
        for (int i = 0; i < associativity; ++i) {
            if (cacheBlocks[i].valid && cacheBlocks[i].lru_order > max_lru) {
                max_lru = cacheBlocks[i].lru_order;
                lru_index = i;
            }
        }
        return lru_index;
    }

public:
    Cache(int cache_size_kb, int block_size_b, int associativity_val, const string& policy)
        : cache_size(cache_size_kb * 1024), block_size(block_size_b), associativity(associativity_val), replace_policy(policy) {
        num_sets = cache_size / (block_size * associativity);
        cahceBlocks_vector.resize(num_sets, vector<CacheBlock>(associativity));
    }

    void access(int label, unsigned int address) {
        demand_fetch++;
        if (label == 0) read_data++;
        if (label == 1) write_data++;

        unsigned int tag = getTag(address);
        int index = getIndex(address);
        auto& cahceBlocks = cahceBlocks_vector[index];

        // Check for hit
        for (int i = 0; i < cahceBlocks.size(); ++i) {
            // hit
            if (cahceBlocks[i].valid && cahceBlocks[i].tag == tag) {
                cache_hit++;
                if (label == 1) cahceBlocks[i].dirty = true; // Mark block as dirty on write
                if (replace_policy == "LRU") updateLRU(cahceBlocks, i); // Move to front as per LRU
                return;
            }
        }

        // Miss
        cache_miss++;
        bytes_from_memory += block_size;

        // Find replacement index
        int replace_index = -1;
        for (int i = 0; i < associativity; ++i) {
            if (!cahceBlocks[i].valid) { // found not used index
                replace_index = i;
                break;
            }
        }
        if (replace_index == -1) { // all used
            if (replace_policy == "FIFO") {
                replace_index = 0; // FIFO queue simulation
            }
            else if (replace_policy == "LRU") {
                replace_index = findLRUIndex(cahceBlocks);
            }
        }

        // save to memory before replace
        // Write back if the block is dirty
        if (cahceBlocks[replace_index].valid && cahceBlocks[replace_index].dirty) {
            bytes_to_memory += block_size;
        }

        // new data
        cahceBlocks[replace_index].valid = true;
        cahceBlocks[replace_index].tag = tag;
        cahceBlocks[replace_index].dirty = (label == 1); // Mark as dirty if it's a write
        
        // Replace block
        if (replace_policy == "LRU") updateLRU(cahceBlocks, replace_index);
        else if (replace_policy == "FIFO") updateFIFO(cahceBlocks);
    }

    void cleanCache()
    {
        for (auto& cacheBlocks : cahceBlocks_vector)
        {
            for(auto& block: cacheBlocks)
            {
                if(block.dirty && block.valid) bytes_to_memory += block_size;
                block.valid = false;
            }
        }
    }
    
    void printStats(const string& input_file) {
        double miss_rate = (double)cache_miss / demand_fetch;
        cout << setiosflags(ios::left) << setw(20) << "Input file:  " << input_file << endl;
        cout << setw(20) << "Demand fetch: " << demand_fetch << endl;
        cout << setw(20) << "Cache hit: " << cache_hit << endl;
        cout << setw(20) << "Cache miss: " << cache_miss << endl;
        cout << setw(20) << "Miss rate: " << miss_rate << endl;
        cout << setw(20) << "Read data: " << read_data << endl;
        cout << setw(20) << "Write data: " << write_data << endl;
        cout << setw(20) << "Bytes from memory: " << bytes_from_memory << endl;
        cout << setw(20) << "Bytes to memory: " << bytes_to_memory << endl;
    }
};

int main(int argc, char* argv[]) {
    if (argc != 6) {
        cerr << "Usage: ./cache [cache size] [block size] [associativity] [replace policy] [file name]" << endl;
        return 1;
    }

    int cache_size = stoi(argv[1]);
    int block_size = stoi(argv[2]);
    string assoc = argv[3];
    string replace_policy = argv[4];
    string file_name = argv[5];

    int associativity = (assoc == "f") ? (cache_size * 1024 / block_size) : stoi(assoc);
    
    Cache cache(cache_size, block_size, associativity, replace_policy);

    ifstream infile(file_name);
    if (!infile) {
        cerr << "Error opening file: " << file_name << endl;
        return 1;
    }

    int label;
    unsigned int address;
    while (infile >> label >> hex >> address) {
        cache.access(label, address);
    }
    infile.close();

    cache.cleanCache();
    cache.printStats(file_name);
    return 0;
}
