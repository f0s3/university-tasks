#include <iostream>
#include <string>
#include <cmath>
#define EPS 0.001
#define X_START 0
#define X_END 2
#define STEP 0.1

using namespace std;

double n = 0;

double factorial(int value) {
	int factorial = 1;
	for (int i = 1; i <= value; i++) {
		factorial *= i;
	}
	return factorial;
}

double taylor(double x) {
	double value = 1;
	double sequence_summ = 0;
    n = 0;
	while (fabs(value) > EPS) {
		sequence_summ += value;
		value *= ((pow(-1, n) * (pow(x, n)) / factorial(n)));
		n++;
	}

	return sequence_summ;
}

void findTaylorSequence() {
	for (double x = X_START; x < X_END; x+= STEP) {
        printf("%-14.2g%-11.4g%-10.4g\n", x, taylor(x), n);
	}
}

int main() {
    cout << "Argument      " << "Function   " << "Quantity of summed elements" << endl;
	findTaylorSequence();
}
