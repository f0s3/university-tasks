#include <iostream>

using namespace std;

int main() {
    signed long value, result = 1;
    short userChoice;
    cout << "Enter value: ";
    cin >> value;
	cout << "1. while (pre-conditional)" << endl;
	cout << "2. do-while (post-conditional)" << endl;
	cin << userChoice;
    if ((value & 1) == 0) value--;
	switch (userChoice) {
		case 1:
			while (value >= 1) {
				result *= value;
				value -= 2;
			}
			break;
		case 2:
			do {
				result *= value;
				value -= 2;
			} while (value >= 1);
			break;
	}
    cout << result << endl;
    return 0;
}
