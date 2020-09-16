#include <iostream>
#include <cmath>
#include <array>

using namespace std;

const int matrixI = 4;
const int matrixJ = 6;

struct RowSum {
    array<int, matrixJ> *row;
    int sum;
};

array<array<int, matrixJ>, matrixI> matrix = {{
    { 1, 5, 6, 4, 6, 3 },
    { 2, 0, 6, 3, 2, 8 },
    { 3, 5, 6,-4, 7, 1 },
    { 4, 5, 6, 2, 2, 5 }
}};

void display(array<array<int, matrixJ>, matrixI> matrix) {
    for (auto const &row: matrix) {
        for (auto const &elem: row) {
            cout << "  " << elem << "  ";
        }
        cout << endl;
    }
}

bool contains(int target, array<int, matrixJ> targetArr) {
    for (auto const &element: targetArr) {
        if (element == target) {
            return true;
        }
    }
    
    return false;
}

int stepOne() {
    int result = matrixJ;
    array<int, matrixJ> columnsToSkip;

    for (int i = 0;i < matrixI;i++) {
        for (int j = 0;j < matrixJ;j++) {
            if (contains(j, columnsToSkip))
                continue;

            if (matrix[i][j] == 0) {
                columnsToSkip.fill(j);
                result--;
            }
        }
    }

    return result;
}

array<array<int, matrixJ>, matrixI> stepTwo() {
    array<RowSum, matrixI> rows;
    int index = 0;

    for (auto &row: matrix) {
        int result = 0;
        for (auto const &element: row) {
            if (element % 2 == 0 && element >= 0) {
                result += element;
            }
        }
        RowSum toFill = { &row, result };
        rows[index++] = toFill;
    }

    bool isSorted = false;

    while (!isSorted) {
        bool isChanged = false;

        for (int i = 0; i < matrixI - 1; i++) {
            if (rows[i].sum > rows[i + 1].sum) {
                swap(rows[i], rows[i + 1]);
                isChanged = true;
            }
        }

        if (!isChanged) {
            isSorted = true;
        }
    }

    array<array<int, matrixJ>, matrixI> result;

    for (int i = 0; i < matrixI; i++) {
        result[i] = *rows[i].row;
    }

    return result;
}

int main() {
    cout << "1. " << stepOne() << endl;
    cout << "2." << endl;
    display(stepTwo());
}
