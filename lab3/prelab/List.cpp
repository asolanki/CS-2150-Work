/*
 * Adarsh Solanki
 * as5nr
 * 2/1/12
 * List.cpp
 */

#include "List.h"

// constructor
List::List()
{
  head = new ListNode;
  tail = new ListNode;
  head->next = tail;
  head->previous = NULL;
  tail->previous = head;
  tail->next = NULL;
  count = 0;
}

// copy constructor
List::List(const List& source)
{
    head = new ListNode;
    tail = new ListNode;
    head->next = tail;
    head->previous = NULL;
    tail->previous = head;
    tail->next = NULL;
    count = 0;

    ListItr iter(source.head->next);
    while (!iter.isPastEnd())
    {
         insertAtTail(iter.retrieve());
         iter.moveForward();
    }
}

// destructor
List::~List()
{
    makeEmpty(); 
    delete head; // can these be combined in one line?
    delete tail;
}

List& List::operator=(const List& source)
{
    if (this == &source) 
        return *this;
    else 
    {
        makeEmpty();
        ListItr iter(source.head->next);
        while (!iter.isPastEnd()) 
        {         
            insertAtTail(iter.retrieve());
            iter.moveForward();
        }
    }
    return *this; 
}

bool List::isEmpty() const
{
  return count < 1;
}

void List::makeEmpty()
{
    while(!isEmpty()) 
    {
        remove( first().retrieve() );
    }
}

ListItr List::first()
{
    ListItr *l = new ListItr(head->next);
    if ( l->isPastEnd() )
    {
        l->moveBackward();
        return *l;
    }
    return *l;

}

ListItr List::last()
{
    ListItr *l = new ListItr(tail->previous);
    if ( l->isPastBeginning() )
    {
        l->moveForward();
        return *l;
    }
    return *l;
}

void List::insertAfter(int x, ListItr position)
{
    // make new ListNode and configure it's value
    // and pointers
    ListNode *l = new ListNode;
    l->value = x;
    l->previous = position.current;
    l->next = position.current->next;
    
    // configure the pointers of surrounding Nodes
    position.current->next->previous = l;
    position.current->next = l;

    // increment static count
    count++;
}

void List::insertBefore(int x, ListItr position)
{
    // make new Node, configure it
    ListNode *l = new ListNode;
    l->value = x;
    l->next = position.current;
    l->previous = position.current->previous;

    // configure surrounding nodes
    position.current->previous = l;
    l->previous->next = l;
    
    // increment count
    count++;
}

void List::insertAtTail(int x)
{
    ListNode *l = new ListNode;
    l->value = x;
    l->next = tail;
    l->previous = tail->previous;
    tail->previous->next = l;
    tail->previous = l;
    count++;
}

void List::remove(int x)
{
    ListItr *l = new ListItr(find(x));
    // should there be any check here for a failing find() call?

    if (!l->isPastEnd())
    {
         l->current->previous->next = l->current->next;
         l->current->next->previous = l->current->previous;
         count--;
         delete l;
    }    

}

ListItr List::find(int x)
{
    // is there a problem here?  compiler warning
    ListItr *l = new ListItr(first());
    while (!l->isPastEnd())
    {
        if (l->current->value == x)
        {
            return *l;
        }
        l->moveForward();
    }
    return *l; 
}

int List::size() const
{
    return count;
}


  
void printList(List& source, bool direction)
{
    
    if (direction)
    {
        // ListItr *l = &(source.first());
        ListItr *l = new ListItr(source.first());
        while (!l->isPastEnd()) 
        {
            cout << l->current->value << "  ";
            l->moveForward();
        }
    }
    else
    {
        // ListItr *l = &(source.last());
        ListItr *l = new ListItr(source.last());
        while (!l->isPastBeginning())
        {
            cout << l->current->value << "  ";
            l->moveBackward();
        }
    }
    
}

