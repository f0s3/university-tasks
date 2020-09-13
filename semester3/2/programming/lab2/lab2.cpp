#include <iostream>
#include <cmath>
#include <stdio.h>

using namespace std;
const double a = 5.8;

double getTgByX(double x) {
    if (x > a) {
        return sqrt(a + x / 2);
    } else if (x <= a) {
        return 1 / (a + x / 2);
    }

    return 0.0;
}

int main() {
    double *xValues = new double[2] {7.3, 2.8};

    for (int i = 0;i < 2;i++) {
        double x = xValues[i];
        double Y = sqrt(1 + exp(x)) / sqrt(exp(x) - 1) + getTgByX(x);
        cout << Y << endl;
    }

    return 0;
}
