#include <iostream>

using namespace std;

float calculateWallsAndFloorArea(float a,float b,float h) {return ((b*h+a*h)*2 + a*b);}

int main() {
    float a,b,h;
    cout << "a = ";
    cin >> a;
    cout << "b = ";
    cin >> b;
    cout << "h = ";
    cin >> h;
    cout << calculateWallsAndFloorArea(a,b,h) << endl;
    return 0;
}