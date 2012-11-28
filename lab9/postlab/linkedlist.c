#include <stdio.h>
#include <stdlib.h>


struct list_item {
    struct list_item *prev, *next;
    void *datum;
};

struct list {
    struct list_item *head;
    int length;
};

int main() {
    struct list *l = (struct list *) malloc(sizeof(struct list));
    l->length = 0;
    l->head = NULL;
    struct list_item *temp;
    
    int num;
    printf("How many elements?\n");
    scanf("%d", &num);



    for (int i = 1; i <= num; i++) {
        temp = (struct list_item *) malloc(sizeof(struct list_item));
        int *val = malloc(sizeof(int));

        printf("Element %d: ", i);
        scanf("%d", val);

        temp->datum = val;
        
        if (!l->head) {
           temp->next = NULL;
           l->head = temp;
        }
        else {
            temp->next = l->head;
            l->head = temp;
        }
        l->length++;
    }

    struct list_item *iter = l->head;
    int count = 0;
    while ( iter )  {
        num = *((int *)(iter->datum));
        printf("%d: %d\n", ++count, num);
        iter = iter->next;
    }

    free(l);
    return 0;
}
