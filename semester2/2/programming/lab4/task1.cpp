#include <iostream>
#include <cmath>


using namespace std;

int main() {
    double x,y;
    int counter = 0;
    for (x = -0.50;x <= 0;x += 0.01) {
        y = ((2 * x + 1) / pow(x - 1, 2));
        counter++;
        cout << "y" << counter << " = " << y << endl;
    }


    return 0;
}