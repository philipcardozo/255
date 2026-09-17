#include <stdio.h>

int collatzSteps(int n){ //return length of sequence
    int long count = 0;
    int n_original = n;

    for (int i = 0; i < n, i++){
        if (n == 0){
           break;
      }

        else if (n % 2 == 0){
            n /=2;
            count++;
         }
         
         else{
            n = 3*n + 1;
            count++;
        }
}

    n = n_original;
    return count;
}

int main (){
    /*
    (a) collatzSteps(1) → 1
(b) collatzSteps(2) → 2 (2 → 1)
(c) collatzSteps(5) → 6 (5 → 16 → 8 → 4 → 2 → 1)    
    */

    printf("The result for n = 5 is ", collatzSteps(5));
    
    return 0;
}