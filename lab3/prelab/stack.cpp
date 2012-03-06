/*
 * Adarsh Solanki
 *  as5nr
 *  2/9/12
 *  stack.cpp
 */

#include "stack.h"

// constructor
stack::stack()
{
    theStack = new List;
    count = 0;
}

// destructor
stack::~stack()
{
    theStack->makeEmpty();
    delete theStack; // maybe?
}

void stack::push(int x)
{
    theStack->insertAtTail(x);
}

void stack::pop()
{
    ListItr first;
    ListItr iter = theStack->last();
    theStack->remove(iter.retrieve());
}

int stack::top() const
{
    return theStack->last().retrieve();
}

bool stack::empty() const
{
    return count < 1;
}
