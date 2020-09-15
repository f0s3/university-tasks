#include <iostream>
#include <cmath>

using namespace std;

const int matrixI = 4;
const int matrixJ = 6;

int matrix[matrixI][matrixJ] = {
    { 1, 5, 6, 4, 6, 3 },
    { 2, 0, 6, 3, 2, 8 },
    { 3, 5, 6,-4, 7, 1 },
    { 4, 5, 6, 2, 2, 4 }
};


void display(int array[matrixI][matrixJ]) {
    for (int i = 0;i < matrixI;i++) {
        for (int j = 0;j < matrixJ;j++) {
            cout << "  " << array[i][j] << "  ";
        }
        cout << endl;
    }
}

bool contains(int element, int array[]) {
    for (int i = 0;i < matrixJ;i++) {
        if (array[i] == element) {
            return true;
        }
    }
    
    return false;
}

int stepOne() {
    int result = matrixJ;

    int columnsToSkip[matrixJ];

    for (int i = 0;i < matrixI;i++) {
        for (int j = 0;j < matrixJ;j++) {
            if (contains(j, columnsToSkip))
                continue;

            if (matrix[i][j] == 0) {
                columnsToSkip[j] = j;
                result--;
            }
        }
    }

    return result;
}

void stepTwo() {
    int rows[matrixI][2];

    for (int i;i < matrixI;i++) {
        int result = 0;
        for (int j;j < matrixJ;j++) {
            if (matrix[i][j] % 2 == 0 && j >= 0) {
                result += matrix[i][j];
            }
        }
        rows[i] = new int*[2]{i, result};
    }

    bool isSorted = false;

    while (!isSorted) {
        bool isChanged = false;
        for (int i = 0;i < matrixI - 1;i++) {
            if (rows[i][2] > rows[i + 1][2]){
                int temp = rows[i];
                rows[i] = rows[i + 1];
                rows[i + 1] = temp;
                isChanged = true;
            }
        }
        if (!isChanged) {
            isSorted = true;
        }
    }

    for (int i = 0;i < matrixI;i++) {
        for (int j = 0;j < 2;j++) {
            cout << rows[i][j] << endl;
        }
    }
}

int main() {
    cout << "1. " << stepOne() << endl;
    stepTwo();
    // display(matrix);
    // cout << "2. " << stepTwo() << endl;
}

