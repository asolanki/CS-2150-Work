#ifndef BOOK_H
#define BOOK_H

#include <iostream>

using namespace std;

class book {
    public:
        book( int pages, string author, int year );
        int pageCount();
        string author();
        int publishYear();
    
    private:
        int pages;
        string author;
        int year;
};
#endif

