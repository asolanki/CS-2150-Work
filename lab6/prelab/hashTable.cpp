// Adarsh Solanki
// as5nr
// 3/11/12
// hashTable.cpp: Hash Table class implementation
// CS 2150: Lab 6

#include "hashTable.h"


// constructor
hashTable::hashTable(int size = 101)
{
    theLists = new vector< list <string> >;          // instantiate 'theLists'
    wordMax = 0;
    size = size << 1; // more buckets!

    if (!checkforlargeprime(size))
        size = getNextPrimeNumber(size);    // assert prime size
    theLists->resize(size);
    capacity = size;
    for ( int i = 0; i < size; i++ )
    {
        list<string> temp;
        theLists->push_back(temp);
    }
//    cout << size << " is the prime # of buckets" << endl;
}


// destructor
hashTable::~hashTable()
{
    delete theLists;
}

bool hashTable::contains( const string & str ) const
{
 
    list<string> & theList = theLists->at( myhash( str ) );
    //    cout << "List retrieved, executing find()" << endl;
    return (find(  theList.begin(), theList.end(), str) != (theList.end()));
}

bool hashTable::insert( const string & str )
{
    //cout << "starting insert method for string: " << str << endl;
    if (!( this->contains(str) ))
    {
    //        cout << "Element does not exist!  Retrieving the list" << endl;
        list<string> & theList = theLists->at( myhash ( str ) );
    //        cout << "Found list, pushing value onto end" << endl;
        theList.push_back(str);
        int len = str.length();
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

void hashTable::printBucketSizes() const
{
    for ( int i = 0; i < 1000; i++ ) {
        cout << "Bucket " << i << ": " << theLists->at(i).size() << endl;
    }
}
