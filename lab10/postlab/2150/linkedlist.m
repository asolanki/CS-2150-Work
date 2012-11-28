#import <objc/Object.h>
//#import <Foundation/NSObject.h>
//#import <Foundation/foundation.h>
#import <stdio.h>

// on mac compile with -framework Foundation
 
@interface listnode : Object
{
    listnode *next;
    int elem;
}

- (listnode *) init;
- (int) elem;
- (id) elem: (int) new_elem;
- (listnode *) next;
- (id) next: (listnode *) new_next;

@end

@interface linkedlist : Object
{
    listnode *head;
    int length;
}

- (linkedlist *) init;
- (listnode *) head;
- (id) head: (listnode *) new_head;
- (int) length;
- (id) incLen;
- (id) add: (listnode *) newb;
@end

@implementation listnode

- (listnode *) init
{
    self = [super init];
    if (self)
    {
        return self;
    }
}

- (int) elem
{
    return elem;
}

- (id) elem: (int) new_elem
{
    elem = new_elem;
    return self;
}

- (listnode *) next
{
    return next;
}

- (id) next: (listnode *) new_next
{
    next = new_next;
    return self;
}

@end

@implementation linkedlist

- (linkedlist *) init 
{
    self = [super init];
    if (self)
    {
        length = 0;
        return self;
    }
}


- (listnode *) head
{
    return head;
}

- (id) head: (listnode *) new_head
{
    head = new_head;
    return self;
}

- (int) length
{
    return length;
}

- (id) incLen
{
    length++;
}

- (id) add: (listnode *) newb;
{
    [newb next:head];
    head = newb;
}

@end

int main(void)
{
    linkedlist *list = [[linkedlist alloc] init];
    [list head:NULL];
    
    listnode *temp;
    
    int num;
    printf("How many elems?\n");
    scanf("%d", &num);

    int i = 1;
    while (i <= num)
    {
        temp = [[listnode alloc] init];
        int val;

        printf("Element %d: ", i);
        scanf("%d", &val);

        [temp elem:val];
        
        if ( ![list head] )
        {
            [temp next: nil];
        }
        else 
        {
            [temp next: [list head]];
        }
        
        [list head: temp];
        [list incLen];
        i++;
    }

    temp = [list head];
    int count = 0;
    while ( temp )
    {
        printf("%d: %d\n", ++count, [temp elem]);
        temp = [temp next];
    }

    free(list);
    
}
