/*
 * Adarsh Solanki as5nr
 * 4/16/12
 * huffmanenc.cpp
 * CS 2150: Pre-Lab 10
 */

#include "heap.h"
#include "huffmanTree.h"
#include <stdio.h>
#include <iostream>

using namespace std;

huffmanTree* mergeTrees( huffmanTree *t1, huffmanTree *t2 ) {
    huffmanTree *result = new huffmanTree();
    result->weight = t1->weight+t2->weight;
    huffmanNode *newRoot = new huffmanNode( NULL, t1->root, t2->root);
    result->root = newRoot;


    return result;
}

int main ( int argc, char **argv ) {
    if ( argc != 2 ) {
        cout << "Please supply input file name as the one and only param" << endl;
        return 1;
    }

    FILE *fp = fopen(argv[1], "r");

    if ( !fp ) {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        return 1;
    }
    

    // count up how many occurences of each ASCII letter
    int counts [128]; // indexed by ascii
    for (int i = 0; i < 128; i++)
        counts[i] = 0;

    char g; // temp char
    int num; // numeric representation of the char 
    int count = 0; // total number of unique characters

    while ( ( g = fgetc( fp ) ) != EOF )
    {
        num = (int) g;
        if (num < 128 && num > 31)
        {
            if ( counts[ num ] == 0 )
                count++; // keep track of how many total letters
            counts[num]++; // increment its count
        }
    }

    // now must construct actual huffman tree.
    // pair two smallest counts under a tree node
    //  repeat for next smallest node under a tree node with the previous tree
    //  repeat util done, you are encoded
   

    // create and populate heap with initial 'forest'
    heap h(count);
    for (int i = 0; i < 128; i++ )
    {
        if (counts[i] > 0)
        {
            h.insert( new huffmanTree( (char) i, counts[i] ) ); 
        }
    }

    huffmanTree *temptree1, *temptree2, *finaltree;
    for (int i = 1; i < count; i ++)
    {
        temptree1 = h.deleteMin();
        temptree2 = h.deleteMin();

        finaltree = mergeTrees(temptree1, temptree2);
        h.insert(finaltree); 
    }

    finaltree = h.deleteMin();
    finaltree->printPrefixCode();

    cout << "----------------------------------------" << endl;
    

    rewind(fp);

    int uncompressedBits = 0;
    while ( ( g = fgetc( fp ) ) != EOF )
    {
        uncompressedBits++ ;
        num = (int) g;
        if ( num < 128 && num > 31 )
            cout << finaltree->getCode.find(g)->second << " ";
    }
    cout << endl;
    cout << "----------------------------------------" << endl;

    uncompressedBits *= 8; // 8 per char

    int compressedBits = 0;
    for ( int i = 0; i < 128; i++ )
    {
        if (counts[i] > 0)
        {
            compressedBits += (finaltree->getCode.find((char)i)->second.length() * counts[i]);
        }
    }

    fclose(fp);

    cout << "Compression Ratio: " << ( (double) uncompressedBits)/compressedBits << endl;
    cout << "The Huffman tree cost: " << ( (double) compressedBits)/(uncompressedBits/8) << " bits per char" << endl;


}
