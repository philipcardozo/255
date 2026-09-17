#include "utils.h"
#include <stdio.h>

int main() {
    int a = 5;
    int b = 10;
    int c = sumSquares(a, b);

    printf("sumSquares(%d, %d) = %d\n", a, b, c);
}