#include <iostream>

using namespace std;

int main() {
    int value, result = 1;
    cout << "Enter a value: ";
    cin >> value;
    if ((value & 1) == 0) value--;
    for (int i = value; i >= 1; i -= 2) result = result * i;
    cout << result << endl;
    return 0;
}