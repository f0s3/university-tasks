#include <iostream>
#include <math.h>
#include <iomanip>
#include <string>

using namespace std;

double x = -0.62;
double y = 0.82;
double z;

double calculate(double x, double y) {
	return pow(y, pow(abs(x), 1/3)) + pow(sin(y - 3), 3);
}

double calculate(double x, double y, double z) {
	return (y * atan(z) - (M_PI / 6)) / (abs(x) + 1 / (pow(y, 2) + 1));
}

void getUserInput(double &target, char name) {
	string temp;
	cout << name << ": ";
	getline(cin, temp);
	if (!temp.empty())
		target = atof(temp.c_str());
	if (name != 'z') return;
	if (temp.empty())
		cout << "Output = " << calculate(x, y) << endl;
	else
		cout << "Output = " << calculate(x, y, z) << endl;
}

int main() {
	getUserInput(x, 'x');
	getUserInput(y, 'y');
	getUserInput(z, 'z');
	
	return 0;
}
