// Adarsh Solanki
// as5nr
// 3/11/12
// hashTable.h: Hash Table class defiition
// CS 2150: Lab 6

#ifndef HASHTABLE_H
#define HASHTABLE_H

#include <vector>
#include <algorithm>
#include <math.h>
#include <cstdlib>
#include <string>
#include <iostream>
#include <list>

using namespace std;

class hashTable {
    public:
        hashTable( int size );
        ~hashTable();
        bool contains ( const string & str ) const;
        bool insert ( const string & str );
        int capacity;
        int wordMax;
        void printBucketSizes () const;

    private:
        vector<list<string> > *theLists;
        int myhash( const string & str ) const;
        int getNextPrimeNumber (int num);
        bool checkforlargeprime (int num);
};

#endif

