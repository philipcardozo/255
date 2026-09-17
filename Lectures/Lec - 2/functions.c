#include<stdio.h>

void  clear (int input) {
    input =0;
}

int square(int x){
    return x*x;
}

int sumSquares(int x, int y) {
    return x*x + y*y;
}

int main(){
    int x =5;
    clear (x);
    printf("%d", x);

    int a = 4;
    int b = 10;

    int c = sumSquares(a, b);

    printf("sumSquares(%d, %d) = %d\n", a, b, c);

    

    return 0;   
}
