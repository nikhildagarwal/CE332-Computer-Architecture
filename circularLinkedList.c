#include <stdio.h>
typedef struct node {
    int value;
    struct node *next;
} node;

int ll_has_cycle(node *first) {
    if (first == NULL) return 0;
    node *head = first;
    int count = 0;                  //initiallizes count to 0 
    while (head->next != NULL) {
        if (head == first){         
            if(count>0){            //checks to see if we have moved past the first comparison 
                return 1;
            }
        }
        head = head->next;
        count++;                    //ensures that we are not comparing the head to itself on the 1st comparison 
    }
    return 0;
    }
    


void test_ll_has_cycle() {
    int i;
    node nodes[5];
    for(i = 0; i < 5; i++) {
        nodes[i].next = NULL;
        nodes[i].value = i*2;
    }
    nodes[0].next = &nodes[1];
    nodes[1].next = &nodes[2];
    nodes[2].next = &nodes[3];
    nodes[3].next = &nodes[4];
    nodes[4].next = NULL;
    
    printf("1. Checking first list for cycles. \n Function ll_has_cycle says it has %s cycle\n\n", ll_has_cycle(&nodes[0])?"a":"no");
    printf("2. Checking length-zero list for cycles. \n Function ll_has_cycle says it has %s cycle\n\n", ll_has_cycle(NULL)?"a":"no");
    printf("3. nodes[%d] value is: %d\n",3, nodes[3].value); //changed index to 3 from 0 (my edit)
}

int main(void) {
    test_ll_has_cycle();
    return 0;
}
