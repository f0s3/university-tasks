#include <iostream>
#include <math.h>
#include <iomanip>
using namespace std;

double calculateFormula(double x) {
	return 4 * cos(4 * x) * cos(4 * x) - sin(4 * x) * (4 * sin(4 * x));
}

int main() {
	cout << calculateFormula(M_PI/3);
}

