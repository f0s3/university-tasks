#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main() {
    double x = 6.;
    double f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) - 7*x + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -6.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 3.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -3.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 2.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -2.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = 1.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    x = -1.;
    f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) + 6;
    if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    return 0;
}