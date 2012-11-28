#include "book.h"

book::book( int pages, string author, int year)
{
    this.pages = pages;
    this.author = author;
    this.year = year;
}

int book::pageCount()
{
    return pages;
}

string book::author()
{
    return author;
}

int book::publishYear()
{
    return year;
}
