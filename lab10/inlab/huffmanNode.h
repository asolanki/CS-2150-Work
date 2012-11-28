/*
 * Adarsh Solanki as5nr
 * 4/17/12
 * huffmanNode.h
 * CS 2150: Pre-Lab 10
 */

#ifndef HUFFMANNODE_H
#define HUFFMANNODE_H

using namespace std;

class huffmanNode {
    public:
        char elem;
        huffmanNode *left;
        huffmanNode *right;

        huffmanNode( char c, huffmanNode *l, huffmanNode *r) : elem( c ), left( l ), right( r ) { } 
};
#endif
