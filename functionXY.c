#include <stdio.h>

int comp1(int a, int b){
    return (5*a) + b;
}

int comp2(int a, int b){
   
    int result = 1;

    while (a != 0) {
        result *= b;
        --a;
    }
    
    return result;
}

int absValManipulation() {
    int x = 0;
    int y = 2;
    int result = 0;
    if(x>4){
        result = comp1(x,y);
    }else{
       result = comp2(x,y); 
    }
    printf("%d",result);
    return 0;
}
