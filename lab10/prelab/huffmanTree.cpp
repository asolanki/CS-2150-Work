/*
 * Adarsh Solanki as5nr
 * 4/17/12
 * huffmanTree.h
 * CS 2150: Pre-Lab 10
 */

#include "huffmanTree.h"

huffmanTree::huffmanTree( ) {
    weight = 0;
    root = NULL;
}

huffmanTree::huffmanTree( char c, int freq ) {
    huffmanNode *tmp = new huffmanNode(c, NULL, NULL);
    root = tmp;
    weight = freq;
}


huffmanTree::~huffmanTree() {
        // TODO
}

void huffmanTree::insert( char c, int wt) {
    huffmanNode *tmp;

    tmp = root;
    root = new huffmanNode(NULL, NULL, NULL);
    root -> right = tmp;
    root -> left = new huffmanNode(c, NULL, NULL);
    weight += wt;
}


void huffmanTree::printPrefixCode() {
    printrecurse(root, "");
}
   
typedef pair <char, string> mapPair;

void huffmanTree::printrecurse(huffmanNode *node, string code) {
    if (!(node->left) && (!(node->right))) 
    {
        cout << node->elem << " " << code << endl;
        getCode.insert( mapPair (node->elem, code));
    }

    if (node->left)
    {
        printrecurse(node->left, code + "0");
    }
    if (node->right)
    {
        printrecurse(node->right, code + "1");
    }

}

