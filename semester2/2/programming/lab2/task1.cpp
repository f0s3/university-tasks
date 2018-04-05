#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int interrupt;
    double x, y, a;
    cout << "x = ";
    cin >> x;
    cout << "\n";
    cout << "a = ";
    cin >> a;
    cout << "\n";
    if ((x <= 0) && (a > 0)) y = exp(a*pow(x,2));
    else y = log(x) / log(a);
    cout << "y = " << y << endl;
    cin >> interrupt;
    return 0;
}