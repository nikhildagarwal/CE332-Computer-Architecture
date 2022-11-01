#include <stdio.h>
int rahrahRutgers(void) {
    int a;
    char *s;
    int v0 = 1, v1 = 1, v2 = 0, v3 = 3, v4 = 2;
    printf("Exercise 1:\n====================\n");
    switch(v0) {
        case 0: printf("Hello September\n"); break;
        case 1: printf("Go Rutgers!\n"); break;
        case 2: printf("Busch Student Center \n"); break;
        case 3: printf("New Brunswick \n"); break;
        case 4: printf("Go ");
        case 5: printf("Rutgers! \n");
        default: printf("Have a great semester! \n"); break;
    }
    for(a=0; a<v1; a++) {
        printf("RU ");
    }
    printf("\n");
    if (v2 == 0) {
        s = "Hello";
    }else {
        s = "Go";
    }
    if(v3 != v4) {
        printf("%s Scarlet Knights!\n",s);
    } else {
        printf("%s RUTGERS!\n",s);
    }
    return 0;
}
