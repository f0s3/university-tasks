#include <iostream>
#include <math.h>
#include <stdio.h>

using namespace std;

int main() {
    double []xValues = {6., -6., 3., -3., 2., -2., 1., -1.};
    double x = 0;
    double f = 0;

    for (int i = 0;i < xValues.length;i++) {
        x = xValues[i];
        f = 6*pow(x, 4) + 7*pow(x, 3) - 36*pow(x, 2) - 7*x + 6;
        if (f == 0.) printf("f(x) =%6.2f x =%f\n", f, x);
    }

    return 0;
}
