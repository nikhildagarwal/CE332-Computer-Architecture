//ex4_in_c.c
#include <stdio.h>
int ex_4(int a) {
int res = 200, i = 20;
do{
res -= a;
i--;
}while(i > a);
return res;
}
int main() {
int a = 10, b = 0;
b = ex_4(a);
printf("b is equal to ");
printf("%d", b);
return 0;
}
