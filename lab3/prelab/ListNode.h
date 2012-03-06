/*
 * Adarsh Solanki
 * as5nr
 * 2/1/12
 * ListNode.h
 *
 *
 * Filename: ListNode.h
 * Description: ListNode class definition
 */
#ifndef LISTNODE_H
#define LISTNODE_H

// needed because NULL is part of std namespace
#include <iostream>
using namespace std;

class List;
class ListNode {
public:
    ListNode();	//Constructor

private:
    int value;
    ListNode *next, *previous;	//for doubly linked lists
    friend class List;	// List needs to be able to access/change
    // ListNode's next and previous pointers
    friend class ListItr;	// ListItr needs to access/change
    
    friend void printList (List& source, bool direction);

    // Not writing a destructor is fine in this case since there is no
    // dynamically allocated memory in this class

};
#endif
/* end of ListNode.h listing */
