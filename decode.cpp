#include <algorithm>
#include <fstream>
#include "iostream"
#include "map"
#include "string"
#include "vector"

using namespace std;

template<typename A, typename B>
std::pair<B,A> flip_pair(const std::pair<A,B> &p)
{
    return std::pair<B,A>(p.second, p.first);
}

template<typename A, typename B>
std::map<B,A> flip_map(const std::map<A,B> &src)
{
    std::map<B,A> dst;
    std::transform(src.begin(), src.end(), std::inserter(dst, dst.begin()),
                   flip_pair<A,B>);
    return dst;
}

int main() {
    map<string, string> codingTable;
    fstream encodedFile;
    encodedFile.open("encoded.txt", ios::in);
    int keysNumber;
    encodedFile >> keysNumber;
    for (int i = 0; i < keysNumber; i++) {
        string key, value;
        encodedFile >> key;
        encodedFile >> value;
        codingTable.insert(pair<string, string>(key, value));
    }
    string input;
    encodedFile >> input;
    string delimiter = "0";

    vector<string> keys;
    size_t pos = 0;
    std::string token;
    while ((pos = input.find(delimiter)) != std::string::npos) {
        token = input.substr(0, pos + 1);
        keys.push_back(token);
        input.erase(0, pos + delimiter.length());
    }
    map<string, string> decodingTable = flip_map(codingTable);
    string result;
    for (const string &k: keys) {
        string c = decodingTable[k];
        result += c;
    }
    cout << result << endl;
}