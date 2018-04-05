#include <iostream>

using namespace std;

int main() {
    float a,b,h;
    int interrupt;
    cout << "a = ";
    cin >> a;
    cout << "b = ";
    cin >> b;
    cout << "h = ";
    cin >> h;
    float result = (b*h+a*h)*2 + a*b;
    cout << result << endl;
    cin >> interrupt;
    return 0;
}