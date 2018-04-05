#include <cmath>
#include <iostream>

double countByFormula() {
    double x = 0.0, r = 0.0, d = 0.0;
    char variableNames[] = {'x','r','d'};
    double variables[] = {x,r,d};
    for (int i = 0;i <3;i++) {
        std::cout << variableNames[i] << " = ";
        std::cin >> variables[i];
    }
    x = variables[0];
    r = variables[1];
    d = variables[2];
    double a = (x * (asin(r / (pow(r, 2) + 1)) + 1 / pow(d, (x + 3))));
    std::cout << a;
    return a;
}

int main() {
    countByFormula();
    return 0;
}