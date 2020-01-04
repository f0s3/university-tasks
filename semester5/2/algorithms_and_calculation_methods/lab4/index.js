A = [
	[  0.32, -0.05,  0.11, -0.08],
	[  0.11,  0.16, -0.28, -0.06],
	[  0.08, -0.15,     0,  0.12],
	[ -0.21,  0.13, -0.27,     0]
];

b = [2.15, -0.83, 1.16, 0.44];

N1=0;
N2=0;
N3=0;

n = 4;

x = [];

e = 0.001;

for (let i = 0;i < n;i++) {
	S1 = 0;
	S2 = 0;
	for (let j = 0;j < n;j++) {
		S1 = S1 + Math.abs(A[i][j]);
		S2 = S2 + Math.abs(A[j][i]);
		N3 = N3 + Math.pow(A[i][j], 2);
	}
	if (S1 > N1) N1 = S1;
	if (S2 > N2) N2 = S2;
}

N3 = Math.sqrt(N3);

printResults();

eps = 1.0;
k = 0;
y = [];

for (let i = 0;i < n;i++) {
	y[i] = b[i];
}

currentStep = "";

while (eps >= e) {
	eps = 0;
	k = k + 1;
	currentStep = currentStep + 'Step ' + k;

	for (let i = 0;i < n;i++) {
		x[i] = b[i];
		S1 = 0;
		for (let j = 0;j < n;j++) {
			x[i] = x[i] + A[i][j] * y[j];
		}
		currentStep = currentStep + '  x[' + i + '] = ' + x[i].toFixed(4) + '  ';
		S1 = Math.abs((x[i] - y[i]));
		if (S1 > eps) { eps = S1 }
	}

	for (let i = 0;i < n;i++) {
		y[i] = x[i];
	}

	currentStep = currentStep + ' eps = ' + eps.toFixed(4);
	console.log(currentStep);
	currentStep = "";
}

console.log('\nSystem solution: ');

for (i = 0;i < n;i++) {
	if (Math.sign(x[i]) === -1) {
		console.log(' x[' + i + '] = ' + x[i].toFixed(4))
	} else {
		console.log(' x[' + i + '] =  ' + x[i].toFixed(4))
	}
}

function printResults() {
	console.log("              A              |  b");
	for (let i = 0;i < n;i++) {
		row = "";
		for (let j = 0;j < n;j++) {
			currentValue = A[i][j];
			if ((currentValue + "") === "0") {
				row = row + "      " + currentValue;
			} else {
				row = (Math.sign(currentValue) === -1) ? row + "  " + currentValue : row + "   " + currentValue;
			}
			if ((j + 1) === n) {
				valueOfBForCurrentRow = b[i];
				row = (Math.sign(valueOfBForCurrentRow) === -1) ?
					row + " | " + valueOfBForCurrentRow :
					row + " |  " + valueOfBForCurrentRow;
			}
		}
		console.log(row);
	}

	console.log('\nMatrix A norms: N1 = ' + N1.toFixed(2)+ ' N2 = ' + N2.toFixed(2) + ' N3 = ' + N3.toFixed(2));

	if ((N1 < 1) || (N2 < 1) || (N3 < 1)) {
		console.log('\nIteration process is convergent! Finding the solution to the precision of е = ' + e)
	} else {
		console.log('\nIteration process is divergent! Stopping calculations!');
		process.exit(0);
	}
}

