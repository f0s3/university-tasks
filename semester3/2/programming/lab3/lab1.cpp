#include <iostream>
#include <cmath>
#include <functional>
#include <stdio.h>

using namespace std;

int main() {
    double x = 0.0;
    double s = 0.0;
    double f1 = 20 - 2 * pow(x, 2) - 6 * x;
    double f2 = 0;
    double dx = 0.33;

    while (x < 2) {

        f1 = 20 - 2 * pow(x, 2) - 6 * x;
        f2 = 0;
        s += (f1 - f2) * dx;
        x += dx;
    }

    cout << "f1=" << f1 << endl;
    cout << "f2=" << f2 << endl;
    cout << "x=" << x - dx << endl;
    cout << "s=" << s << endl;

    return 0;
}
