// Ecall example in c (ex3_2.c)
#include <stdio.h>
int main() {
char x11_c1 = 'E';
char x11_c2 = '.';
int x11_n3 = 2;
int x11_n4 = 1;
int x11_n5 = x11_n3 | x11_n4;
printf("%c%d%c%d\n", x11_c1, x11_n5, x11_c2, x11_n3);
return 0; //no need to convert this line into assembly language
