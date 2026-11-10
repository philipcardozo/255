#include <stdio.h>


//returs the least number of coins for given input of cents
int minCoins(int cents){ 
    int penny = 1;
    int dime = 10;
    int quarter = 25;
    int count = 0;
    int cents_initial = cents;

    if (cents % quarter) {
        count = count + cents / 25;
    }

    if (cents % dime){
        count = count + cents / 10;
    }

    if (cents % penny && cents != 0){
        count = count + cents / 1;
    }

    cents = cents_initial;
    return count;
}

int main (){

    printf("Number of coints for 100c is ", minCoins(100), "test");
    return 0;
}