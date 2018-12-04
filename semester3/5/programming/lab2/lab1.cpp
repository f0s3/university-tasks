#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main() {
    double x = -15.;
    double f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 15.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -5.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 5.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -3.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 3.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -1.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 1.;
    f = 2*pow(x, 3) - 4*pow(x,2) - x - 15;
    return 0;
}