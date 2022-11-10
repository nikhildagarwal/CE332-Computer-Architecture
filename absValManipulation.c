#include <stdio.h>



int absValManipulation() {
    int x = -100;
    int y = 0;
    if(x<0){
        y = x*-1;
    }else{
        y = x;
    }
    if(x<y){
        printf("%d",6*x);
    }else{
        printf("%d",4*y);
    }
}
