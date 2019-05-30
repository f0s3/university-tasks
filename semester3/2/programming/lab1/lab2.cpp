#include <iostream>
#include <math.h>
#include <iomanip>

using namespace std;

double x = -0.62;
double y = 0.82;
double z = 25.0;

double calculateA(double x, double y) {
	return pow(y, pow(abs(x), 1/3)) + pow(sin(y - 3), 3);
}

double calculateB(double x, double y, double z) {
	return (y * atan(z) - (M_PI / 6)) / (abs(x) + 1 / (pow(y, 2) + 1));
}

int main() {
	cout << "A = " << calculateA(x, y) << endl;
	cout << "B = " << calculateB(x, y, z) << endl;
	return 0;
}

