#include <iostream>
#include <cmath>
#include <stdio.h>
#include <algorithm>
#include <vector>

using namespace std;

const double *values = new double[5] {4, -10, -7.1, 4, 3};


double getPartOneValue() {
    double result = 0;
    for (int i = 0; i < 5;i++) {
        if (values[i] >= 0) {
            result += values[i];
        }
    }

    return result;
}

double getPartTwoValue() {
    return 1.0;
}

int getMaxPositionFromArray() {
    int result = 0;
    for (int i = 0;i < 5;i++) {
        if (abs(values[i]) > abs(values[result])) {
            result = i;
        }
    }

    return result;
}

int getMinPositionFromArray() {
    int result = 0;
    for (int i = 0;i < 5;i++) {
        if (abs(values[i]) < abs(values[result])) {
            result = i;
        }
    }

    return result;
}

int main() {
    cout << "1. " << getPartOneValue() << endl;
    cout << "2. " << getPartTwoValue() << endl;

    std::vector<int> myvector (values, values+5);
    for (int i = 0;i < 5;i++) {
        cout << "Unsorted: " << myvector[i] << endl;
    }
    std::sort (myvector.begin(), myvector.begin()+5);
    for (int i = 0;i < 5;i++) {
        cout << "Sorted: " << myvector[i] << endl;
    }

    return 0;
}

