#include <stdio.h>

int* min(int* input, int length, int *result){
    int minimum = input[0];
    for(int i = 1;i<length;i++){
        if(input[i]<minimum){
            minimum = input[i];
            result[1] = i;
        }
    }
    
    result[0] = minimum;
    return result;
}

int main(void){
    int arr[] = {20, 5, -12, 100, -10, 64, 128};  //change input array here
    int result[] = {0,0};
    int length = sizeof(arr) / sizeof(arr[0]);
    
    //printf("%d",length);     //debug to check length of array
    int* final = min(arr,length,result);
    
    printf("\nSmallest number in the array: %d", final[0]);
    printf("\nIndex of the smallest number in the array: %d", final[1]);
}
