#include <iostream>

using namespace std;

int main() {
    int value, result = 1, userChoice;
    cout << "Enter value: ";
    cin >> value;
	cout << "1. while" << endl;
	cout << "2. do-while" << endl;
	cin << userChoice;
	switch (userChoice) {
		case 1:
			if ((value & 1) == 0) value--;
			int i = value;
			while (i >= 1) {
				result = result * i;
				i -= 2;
			}
			cout << result << endl;
			break;
		case 2:
			if ((value & 1) == 0) value--;
			int i = value;
			do {
				result = result * i;
				i -= 2;
			} while (i >= 1);
			cout << result << endl;
			break;
	}
    return 0;
}