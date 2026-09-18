// Returns the number of values in the Collatz sequence from n through 1.
int collatzSteps(int n) {
    int steps = 1;

    while (n != 1) {
        if (n % 2 == 0) {
            n /= 2;
        } else {
            n = 3 * n + 1;
        }
        steps++;
    }

    return steps;
}

/*
int main(void) {
    return 0;
}
*/
