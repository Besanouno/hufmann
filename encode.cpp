#include <algorithm>
#include <fstream>
#include "iostream"
#include "string"
#include "map"
#include "vector"


using namespace std;

template<typename A, typename B>
std::pair<B,A> flip_pair(const std::pair<A,B> &p)
{
    return std::pair<B,A>(p.second, p.first);
}

template<typename A, typename B>
std::multimap<B,A> flip_map(const std::map<A,B> &src)
{
    std::multimap<B,A> dst;
    std::transform(src.begin(), src.end(), std::inserter(dst, dst.begin()), flip_pair<A,B>);
    return dst;
}

vector<string> orderLetters(string input) {
    map<string, int> letters;

    for (char i : input) {
        string asString = string(1,i);
        if (letters.find(asString) != letters.end()) {
            letters[asString]++;
        } else {
            letters.insert(pair<string, int>(asString, 1));
        }
    }

    multimap<int, string> dst = flip_map(letters);

    vector<string> orderedLetters;
    for(pair<int, string> p : dst) {
        orderedLetters.push_back(p.second);
    }
    return orderedLetters;
}

struct TNode
{
            TNode* left;
            TNode* right;
    string key;
};

TNode* prepareTree(vector<string> letters) {

    if (letters.empty()) {
        return nullptr;
    }

    string first = letters[0];
    TNode* current = nullptr;
    TNode* leftLeaf = nullptr;
    TNode* rightLeaf = nullptr;

    leftLeaf = new TNode();
    leftLeaf->left = nullptr;
    leftLeaf->right = nullptr;
    leftLeaf->key = first;

    if (letters.size() > 1) {
        string second = letters[1];
        rightLeaf = new TNode();
        rightLeaf->left = nullptr;
        rightLeaf->right = nullptr;
        rightLeaf->key = second;
    }

    auto * root = new TNode();
    root->left = leftLeaf;
    root->right = rightLeaf;

    current = root;

    for (int i = 2; i < letters.size(); i++) {
        auto * left = new TNode();
        left->left = nullptr;
        left->right = nullptr;
        left->key = letters[i];

        root = new TNode();
        root->left = left;
        root->right = current;

        current = root;
    }

    return current;
}

map<string, string> prepareCodingTable(TNode* root) {
    map<string, string> codingTable;

    TNode* pointer = root;
    string code;
    while (pointer != nullptr) {
        if (pointer->left != nullptr) {
            codingTable.insert(pair<string, string>(pointer->left->key, code + "0"));
        }
        code += "1";
        if (pointer->right == nullptr) {
            codingTable.insert(pair<string, string>(pointer->key, code + "0"));
        }
        pointer = pointer->right;
    }

    return codingTable;
}

int main() {

    string input;

    fstream src;
    src.open("src.txt", ios::in);
    src >> input;
    src.close();

    vector<string> letters = orderLetters(input);
    TNode* root = prepareTree(letters);
    map<string, string> codingTable = prepareCodingTable(root);

    fstream dest;
    dest.open("encoded.txt", ios::out);
    string result;
    dest << codingTable.size() << endl;
    for (pair<string, string> c: codingTable) {
        cout << c.first << " " << c.second << endl;
        dest << c.first << " " << c.second << endl;
    }
    for (char c: input) {
        result += codingTable[string(1,c)];
    }

    cout << result << endl;
    dest << result << endl;

    dest.close();

    return 0;
}
