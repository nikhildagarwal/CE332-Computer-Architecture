// ex3_3.c
#include <stdio.h>
int main() {
int a = 13, b = 14, c = 27;
if (a != b) {
c = c | a; // “|” is or operator
printf("%d", c);
}
else {
b = a ^ c; // “^” is xor operator
printf("%d", b);
}
return 0; //no need to convert this line into assembly language
}
