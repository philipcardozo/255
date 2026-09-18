struct Stats {
    int min;
    int max;
    long sum;
    double mean;
};

struct Stats computeStats(const int a[], int n) {
    struct Stats stats;
    int i;

    stats.min = a[0];
    stats.max = a[0];
    stats.sum = 0;

    for (i = 0; i < n; i++) {
        if (a[i] < stats.min) {
            stats.min = a[i];
        }
        if (a[i] > stats.max) {
            stats.max = a[i];
        }
        stats.sum += a[i];
    }

    stats.mean = (double) stats.sum / n;
    return stats;
}

/*
int main(void) {
    return 0;
}
*/
