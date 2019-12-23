const performance = require('perf_hooks').performance;

/**
 * function `insertionSort`
 * accepts:
 * m: ?
 * arr: array to be sorted
 * returns: sorted array
 */
function insertionSort(m, arr) {
	let i, j, key;
	for (j = 2;j <= m;j++) {
		key = arr[j];
		i = j - 1;
		while ((i > 0) && (arr[i] > key)) {
			arr[i + 1] = arr[i];
			i = i - 1;
		}
		arr[i + 1] = key;
	}
	return arr;
}

function getRandomInt(max) {
  return Math.floor(Math.random() * Math.floor(max));
}

arraysLengths = [
	100, 300, 500, 1000, 1500, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000,
	15000, 20000, 25000, 30000, 35000, 40000, 50000, 60000, 70000, 80000, 90000, 100000
];

arraysWithValues = [];

allMiddleValuesOfTime = [];

sortedArrays = [];

let sortedTimesForLastItem, minTime, maxTime;

// filling all 25 arrays of different size with values
for (let i = 0;i < arraysLengths.length;i++) {
	tempArr = [];
	while (tempArr.length < arraysLengths[i]) {
		tempArr.push(getRandomInt(1000));
	}
	arraysWithValues.push(tempArr);
}

for (let i = 0;i < arraysWithValues.length;i++) {
	tempArr = [];
	for (let j = 0;j < 5;j++) {
		// measure time before sorting the array;
		let t1 = performance.now();
		sortedArrays.push(insertionSort(arraysLengths[i], arraysWithValues[i]));
		// measure time after sorting the array;
		let t2 = performance.now();
		// calculate delta
		dt = t2 - t1;
		tempArr.push(dt);
	}
	// get the sum  of all elements of an array
	let sum = Math.round(tempArr.reduce((a, b) => a + b, 0));
	allMiddleValuesOfTime.push(sum / 5);
	// n = 100000
	if (i == 24) {
		sortedTimesForLastItem = tempArr.sort((a, b) => a - b);
		minTime = sortedTimesForLastItem[0];
		maxTime = sortedTimesForLastItem[sortedTimesForLastItem.length - 1];
	}
}


console.log("Algorithm execution time:");
for (let i = 0;i < arraysLengths.length;i++) {
	console.log("n = ", arraysLengths[i], "t = ", allMiddleValuesOfTime[i]);
}

console.log("Minimal time for n = 100000, t = ", minTime);
console.log("Maximum time for n = 100000, t = ", maxTime);

