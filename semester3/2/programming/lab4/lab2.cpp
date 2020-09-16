#include <iostream>
#include <math.h>
#include <iomanip>

using namespace std;

double x = 0;
double a = 0;
double b = 0;
double c = 0;

double fun_1(double x, double a, double b) {
	return 1 / a * x - b;
}

double fun_2(double x, double a) {
	return (x - a) / x;
}

double fun_3(double x, double c) {
	return 10 * x / (c - 4);
}

double fun(double x, double a, double b, double c) {
	if (x + 5 < 0 && c == 0)
		return fun_1(x, a, b);
	else if (x + 5 > 0 && a != 0)
		return fun_2(x, a);
	else
		return fun_3(x, c);
}

void getUserInput(double &target, char name) {
	cout << name << ": ";
	cin >> target;
}

int main() {
	getUserInput(x, 'x');
	getUserInput(a, 'a');
	getUserInput(b, 'b');
	getUserInput(c, 'c');
	cout << fun(x, a, b, c) << endl;
	return 0;
}
