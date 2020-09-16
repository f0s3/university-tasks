#include <iostream>
#include <cmath>
#include <stdio.h>
#include <algorithm>
#include <vector>

using namespace std;

int valuesLength = 5;
double *values = new double[valuesLength] {4, -10, -7.1, 4, 3};
int subarrayLength = 0;

double * getSubarray(int start, int end) {
    subarrayLength = end - start + 1;

    double *resultArr = new double[subarrayLength] {};

    for (int i = start, j = 0;i <= end;i++, ++j) {
        resultArr[j] = values[i];
    }

    return resultArr;
}

double getMultipliedAbsoluteValue(double *arr) {
    double result = abs(arr[0]);

    for (int i = 1;i < subarrayLength;i++) {
        result *= abs(arr[i]);
    }

    return result;
}

int getMaxPositionFromArray() {
    int result = 0;
    for (int i = 0;i < valuesLength;i++) {
        if (abs(values[i]) > abs(values[result]))
            result = i;
    }

    return result;
}

int getMinPositionFromArray() {
    int result = 0;
    for (int i = 0;i < valuesLength;i++) {
        if (abs(values[i]) < abs(values[result]))
            result = i;
    }

    return result;
}

double getPartOneValue() {
    double result = 0;
    for (int i = 0;i < valuesLength;i++) {
        if (values[i] >= 0)
            result += values[i];
    }

    return result;
}

double getPartTwoValue() {
    double minValuesPosition = getMinPositionFromArray();
    double maxValuesPosition = getMaxPositionFromArray();
    double *arrayToMultiply;

    if (minValuesPosition > maxValuesPosition) {
        arrayToMultiply = getSubarray(maxValuesPosition, minValuesPosition);
    } else if (maxValuesPosition > minValuesPosition) {
        arrayToMultiply = getSubarray(minValuesPosition, maxValuesPosition);
    }

    return getMultipliedAbsoluteValue(arrayToMultiply);
}

int main() {
    cout << "1. " << getPartOneValue() << endl;
    cout << "2. " << getPartTwoValue() << endl;
    cout << "3. [";

    std::vector<int> myvector (values, values+5);
    std::sort(myvector.begin(), myvector.begin()+5);

    for (int i = 0;i < valuesLength - 1;i++) {
        cout << myvector[i] << ", ";
    }

    cout << myvector[valuesLength - 1] << "]" << endl;

    return 0;
}

