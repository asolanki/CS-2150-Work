/*
 * Adarsh Solanki as5nr
 * 4/16/12
 * heap.h: Heap class definition
 * CS 2150: Lab 10
 */

#ifndef HEAP_H
#define HEAP_H

#include <vector>
#include <iostream>
#include "huffmanTree.h"

using namespace std;

class heap {
    public:
        heap( int capacity );
        ~heap();
        bool isEmpty() const;
        huffmanTree* findMin() const;
        void insert( huffmanTree *x );
        huffmanTree* deleteMin( );
        void makeEmpty();
        int currentSize;

    private:
        vector<huffmanTree*> list;
        void percolateDown( int hole );
};
#endif
