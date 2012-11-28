import <objc/Object.h>
 
@interface listnode : Object
{
    listnode *next;
    int elem;
}

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

- (listnode *) head;
- (id) head: (listnode *) new_head);
- (int) length;
- (id) append: (listnode *) tail;
@end


#import "Point.h"
#import <math.h>
 
 @implementation Point
  
  - (id) x: (double) x_value
  {
         x = x_value;
            return self;
  }
   
   - (double) x
   {
          return x;
   }
    
    - (id) y: (double) y_value
    {
           y = y_value;
              return self;
    }
     
     - (double) y
     {
            return y;
     }
      
      - (double) magnitude
      {
             return sqrt(x*x+y*y);
      }
       
       @end
