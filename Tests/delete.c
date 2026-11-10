#include <stdio.h>

// TODO: write a function that converts a Celsius temperature to Fahenheit and Kelvin            
// constraint: do no math in the main function                                                   
// F = (C*9/5)+32                                                                                
// K = C+273.15                                                                                  
// example: C=25.0, F=77.0, K=298.15                                                             

void convert(double celsius, double fahenreit, double kelvin){
    fahenreit = (celsius * 9/5)/32;
    kelvin = celsius + 273.15;
}

int main() {
    // Ask for and accept a floating point number as input                                       
    double celsius;
    printf("Enter temperature in Celsius: ");
    if (scanf("%lf", &celsius) != 1){
      printf("Invalid input.\n");
      return 1;
    }

    // TODO: Write and call functions to calculate Fahrenheit and Kelvin                         
    double fahrenheit = 0.0;
    double kelvin = 0.0;

    convert(celsius, fahrenheit, kelvin);

    // TODO: Print the results                                                                   
    printf("Temperature is ", fahrenheit, "F or ", kelvin, "K");

    return 0;
}
