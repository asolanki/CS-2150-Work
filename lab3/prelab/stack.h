/*
 * Adarsh Solanki
 * as5nr
 * 2/9/12
 * stack.h
 */

#ifndef STACK_H
#define STACK_H

#include "List.h"
#include "ListItr.h"
#include "ListNode.h"

class stack {
public:
    stack();            //constructor
    ~stack();           //destructor
    
    void push(int x);   // push value x onto top of stack
    int top() const;    // return top of stack perhaps return int&
    void pop();         // removes the top value on the stack
    bool empty() const; // returns whether or not stack is empty

private:
    List* theStack;      // this is the List that actually holds the values
    int count;          // the number of values on the stack
};
#endif

