// Adarsh Solanki
// as5nr
// 3/11/12
// hashTable.cpp: Hash Table class implementation
// CS 2150: Lab 6

#include "hashTable.h"


// constructor
hashTable::hashTable(int size = 101)
{
    theBuckets = new vector< list <string> >;          // instantiate 'theBuckets'
    wordMax = 0;
    size = size << 1; // more buckets!

    if (!checkforlargeprime(size))
        size = getNextPrimeNumber(size);    // assert primeness
    theBuckets->resize(size);
    capacity = size;                        // store size
    for ( int i = 0; i < size; i++ )
    {
        list<string> temp;
        theBuckets->push_back(temp);
    }
}


// destructor
hashTable::~hashTable()
{
    delete theBuckets;
}

bool hashTable::contains( const string & str ) const
{
 
    // retrieve correct list from underlying vector based on hash
    list<string> & theList = theBuckets->at( myhash( str ) );
    return (find(  theList.begin(), theList.end(), str) != (theList.end()));
}

bool hashTable::insert( const string & str )
{
    // cout << "starting insert method for string: " << str << endl;
    if (!( this->contains(str) ))
    {
        list<string> & theList = theBuckets->at( myhash ( str ) );
        theList.push_back(str);
        int len = str.length();
        
        // store max wordLength, HUGE optimization on wordPuzzle

        if ( len > wordMax)
            wordMax = len;

        return true;
    }
    return false;
}

int hashTable::myhash( const string & str ) const
{

    int hashVal = 1;
    int len = str.length();
    for ( int i = 0; i < len; i ++)
    {
        hashVal *= (((str[i])*37) % 128);
        hashVal = hashVal << 1;
    }
    hashVal %= capacity;
    return ( hashVal < 0 ? (hashVal + capacity) : hashVal);
}

/*
 * provided function for primeness check
 */
bool hashTable::checkforlargeprime (int n)
{
    int sss = ((int)(sqrt((double)n)))+1;
    int pn = 2;
    while (pn < sss)
    {
        if (n % pn == 0)
        {
            return false;
        }
        pn = getNextPrimeNumber(pn);
    }
    return true;
}

/*
 * provided function for primeness check
 */
int hashTable::getNextPrimeNumber (int num)
{
    int nam = num + 1;
    bool das = true;
    while (das)
    {
        if (checkforlargeprime(nam))
            das = false;
        else
            nam = nam+1;
    }
    return nam;
}

