#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main() {
    double i = 1;
    while (i <= 1.007) {
        double s = 1 / pow(2,i);
        cout << "s" << i << " = " << fixed << setprecision(4) << s << endl;
        i += 0.001;
    }
    return 0;
}