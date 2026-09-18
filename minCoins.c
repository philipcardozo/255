// Returns the minimum number of U.S. coins needed to make cents.
int minCoins(int cents) {
    int coins = 0;

    coins += cents / 25;
    cents %= 25;
    coins += cents / 10;
    cents %= 10;
    coins += cents / 5;
    cents %= 5;
    coins += cents;

    return coins;
}

/*
int main(void) {
    return 0;
}
*/
