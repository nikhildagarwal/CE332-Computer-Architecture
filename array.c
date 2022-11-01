#include <stdio.h>
int main() {
int arr[4] ={7,5,3,1}; //declare and initialize the array arr
int x5 = arr[0];
int x6 = arr[1];
int x7 = x5 ^ x6; // “^” is xor shift operator
int x8 = x7 + x6;
arr[2] = x7;
arr[3] = x8;
return 0; //no need to convert this line into assembly language
}
