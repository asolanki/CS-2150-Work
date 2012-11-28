/*
 * Adarsh Solanki as5nr
 * 4/16/12
 * heap.cpp: Heap class implementation
 * CS 2150: Lab 10
 */

#include "heap.h"

heap::heap( int capacity = 100 ) : list( capacity+1 ), currentSize( 0 ) {
}

heap::~heap() {
    // TODO
    makeEmpty();
}

bool heap::isEmpty() const {
    return (currentSize == 0);
}

huffmanTree* heap::findMin() const {
    return list[ 1 ];
}

void heap::insert( huffmanTree *x ) {
    if ( currentSize == list.size() - 1 )
    {
        cout << "doubling list size" << endl;
        list.resize( (currentSize+1)*2 );
    }
    currentSize++;
    int hole = currentSize; // right past the last one
    while ( hole > 1 && (*x) < (*(list[ hole/2 ])) ) 
    {   // while hole's parent > x
        list[ hole ] = list[ hole/2 ]; // percolate up
        hole /= 2;
    }
    // cout << x << "inserted at list[" << hole << "]" << endl;
    list[ hole ] = x;
}

huffmanTree* heap::deleteMin( ) {
    if (isEmpty()) 
        cerr << "Trying to delete from empty heap!  error!" << endl;
    huffmanTree *val = list[ 1 ];
    list[ 1 ] = list[ currentSize-- ]; // previous last item
    percolateDown( 1 );
    return val;
}

void heap::makeEmpty() {
    while (!isEmpty())
        deleteMin();
}

void heap::percolateDown( int hole ) {
    int child;
    huffmanTree* temp = list[ hole ];

    while ( hole*2 <= currentSize ) 
    {
        child = hole * 2;
        if ( child != currentSize && (*(list[ child + 1 ])) < (*(list[ child ])) )
        {
            child++;
        }
        if ( (*list[ child ]) < (*temp) )
        {
            list[ hole ] = list[ child ];
        }
        else break;
        hole = child;
        
    }
    list[ hole ] = temp;
}
