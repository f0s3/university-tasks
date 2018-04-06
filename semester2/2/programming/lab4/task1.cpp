#include <iostream>
#include <cmath>
#include <iomanip>

int main() {
    int counter = 0;
    std::string space = "";
    std::cout << ".-------------------------------.\n";
    std::cout << "|______x________" << "|______y________|\n";
    for (double x = -0.50;x <= 0;x += 0.01) {
        double y = ((2 * x + 1) / pow(x - 1, 2));
        counter++;
        std::cout << std::fixed << std::setprecision(2);
        (counter <= 9) ? space = " " : space = "";
        std::cout << "|  x" << counter << space <<" =  " << x << " |  y" << counter << "  =  " << y << space << " |\n";
    }
    std::cout << "`-------------------------------`\n";
    return 0;
}