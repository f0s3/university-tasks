A = [
	[0.11,  1.13, -0.17,  0.18],
	[0.13, -1.17,  0.18,  0.14],
	[0.11, -1.05, -0.17, -0.15],
	[0.15, -0.05,  0.18, -0.11]
];

b = [1.00, 0.13, 0.11, 1.00];

C = [ [],[],[],[] ];

d = [];

x = [];

eArr = [];

n = 4;

// fill arrays
for (let i = 0;i < n;i++) {
	for (let j = 0;j < n;j++) {
		C[i][j] = A[i][j];
	}
	C[i][n] = b[i];
}

// perform calculations

// direct
for (let k = 0;k < n;k++) {
	for (let j = n;j >= k;j--) { C[k][j] = C[k][j] / C[k][k]; }
	for (let i = k + 1;i < n;i++) {
		for (let j = n;j >= k;j--) {
			C[i][j] = C[i][j] - C[i][k] * C[k][j];
		}
	}
}

// fill d with values
for (let i = 0;i < n;i++) {
	d[i] = C[i][4];
}

// indirect

for (let i = n - 1;i >= 0;i--) {
	x[i] = C[i][n];
	for (let j = i + 1;j < n;j++) { x[i] = x[i] - C[i][j] * x[j] }
}

// calculate accuracy

for (let i = 0;i < n;i++) {
	e = 0;
	for (let j = 0;j < n;j++) { e = e + A[i][j] * x[j] }
	eArr.push(Math.abs(e - b[i]));
}

// print the results

function printResults() {
	console.log("              A              |  b");
	for (let i = 0;i < n;i++) {
		row = "";
		for (let j = 0;j < n;j++) {
			currentValue = A[i][j];
			row = (Math.sign(currentValue) === -1) ? row + "  " + currentValue : row + "   " + currentValue;
			if ((j + 1) === n) {
				valueOfBForCurrentRow = b[i];
				row = (Math.sign(valueOfBForCurrentRow) === -1) ?
					row + " | " + valueOfBForCurrentRow :
					row + " |  " + valueOfBForCurrentRow;
			}
		}
		console.log(row);
	}
	
	console.log("------------------------------------");
	
	console.log("              C              |  d");
	for (let i = 0;i < n;i++) {
		row = "";
		for (let j = 0;j < n;j++) {
			currentValue = C[i][j].toFixed(2);
			integerPart = Math.trunc(currentValue);
			if ((integerPart + "").length === 2) {
				row = (Math.sign(currentValue) === -1) ? row + "  " + currentValue : row + "  " + currentValue;
			} else {
				row = (Math.sign(currentValue) === -1) ? row + "  " + currentValue : row + "   " + currentValue;
			}
			if ((j + 1) === n) {
				valueOfBForCurrentRow = d[i].toFixed(2);
				row = (Math.sign(valueOfBForCurrentRow) === -1) ?
					row + " | " + valueOfBForCurrentRow :
					row + " |  " + valueOfBForCurrentRow;
			}
		}
		console.log(row);
	}

	console.log("System solution: ");
	for (let i = 0;i < x.length;i++) {
		if (Math.sign(x[i]) === -1) {
			console.log("  x[" + i + "] = " + x[i]);
		} else {
			console.log("  x[" + i + "] =  " + x[i]);
		}
	}

	console.log("System accuracy: ");

	for (let i = 0;i < eArr.length;i++) {
		if (Math.sign(eArr[i]) === -1) {
			console.log("  e[" + i + "] = " + eArr[i]);
		} else {
			console.log("  e[" + i + "] =  " + eArr[i]);
		}
	}


}

printResults()
