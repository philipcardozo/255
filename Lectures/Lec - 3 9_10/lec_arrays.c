#include <stdio.h>

struct Point {
    double x , y;


};

struct Point midpoint(struct Point a, struct Point b){
    struct Point ret;
    ret.x = (a.x + b.x) /2.0;
    ret.y = (a.y + b.y) /2.0;

}

void clear (int a[], int size) {
    for (int i = 0; i < size; i++){
        a[i] = 0;   
    }
}

int main() {
    int arr[] = {1,2,3};
    int size = 3;
    // print 3 

    clear (arr, size); // entire arr is 0 

    double arr2 [5];
    int size1 = 5;

    for (int j = 0; j <size1; j++){
        printf("arr2[%d] = %f\n", j, arr2[j]);
        

        printf("arr2[%d] = %f\n", j , arr2[10000000000]);
    }

//    int len = strlen(str);

  //  strcpy(copy, original);

    char name[12] = "EU";

    struct Point p1;
    p1.x = 1.0;
    p1.y = 3.0;

    struct Point p2;
    p2.x = .4;
    p2.y = .1;

    printf("p1 = (%.3f, %.2f)\n" , p1.x, p1.y);
    printf("p2 = (%.4f, %.1f)\n" , p1.x, p1.y);

    struct Point mid = midpoint (p1, p2);

    return 0;
}
