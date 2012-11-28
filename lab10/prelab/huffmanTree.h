/*
 * Adarsh Solanki as5nr
 * 4/17/12
 * huffmanTree.h
 * CS 2150: Pre-Lab 10
 */

#ifndef HUFFMANTREE_H
#define HUFFMANTREE_H

#include "huffmanNode.h"
#include <iostream>
#include <map>

using namespace std;

class huffmanTree {
    public:
       huffmanTree();
       huffmanTree( char c, int freq ); 
       ~huffmanTree();
       void insert( char c, int wt );

       void printPrefixCode();
       bool operator<(const huffmanTree& someTree) const {
           return (weight < someTree.weight);
       }

       bool operator>(const huffmanTree& someTree) const {
           return (weight > someTree.weight);
       }

       huffmanNode *root;
       int weight;
       map <char, string> getCode;

       private:
            void printrecurse(huffmanNode *node, string code);

};

#endif
