const performance = require('perf_hooks').performance;

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

function bubbleSort(m, arr) {
	for (let i = 0;i < m;i++) {
		for (let j = 0;j < (m - i);j++) {
			if (arr[j] > arr[j + 1]) {
				temp = arr[j];
				arr[j] = arr[j + 1];
				arr[j + 1] = temp;
			}
		}
	}
}

function shakerSort(m, arr) {
	for (let i = 0;i < (m / 2);i++) {
		if (arr[i] > arr[i + 1]) {
			min = i + 1;
			max = i;
		} else {
			min = i;
			max = i + 1;
		}

		for (j = i + 2;j < (m - i + 1);j++) {
			if (arr[j] > arr[max]) { max = j }
			else if (arr[j] < arr[min]) { min = j }

			buf = arr[i];
			arr[i] = arr[min];
			arr[min] = buf;

			if (max = i) { max = min }

			buf = arr[m - i + 1];
			arr[m - i + 1] = arr[max];
			arr[max] = buf;
		}
	}
}

function quickSort(arr) {
	if (arr.length <= 1) { return arr; }
	let left = [];
	let right = [];
	let newArr = [];
	var pivot = arr.pop();

	for (let i = 0; i < arr.length; i++) {
		if (arr[i] <= pivot) {
			left.push(arr[i]);
		} else {
			right.push(arr[i]);
		}
	}

	return newArr.concat(quickSort(left), pivot, quickSort(right));
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

let sortedTimesForLastItem = [];
let minTime = 0;
let maxTime = 0;

// filling all 25 arrays of different size with values
for (let i = 0;i < arraysLengths.length;i++) {
	tempArr = [];
	while (tempArr.length < arraysLengths[i]) {
		tempArr.push(getRandomInt(1000));
	}
	arraysWithValues.push(tempArr);
}

function runSort(algorithm) {
	console.log("-----------------------------------------");
	console.log("[sort]: Running " + algorithm + " sort");
	for (let i = 0;i < arraysWithValues.length;i++) {
		tempArr = [];
		for (let j = 0;j < 5;j++) {
			// measure time before sorting the array;
			let t1 = performance.now();
			if (algorithm == "insertion") {
				sortedArrays.push(insertionSort(arraysLengths[i], arraysWithValues[i]));
			} else if (algorithm == "bubble") {
				sortedArrays.push(bubbleSort(arraysLengths[i], arraysWithValues[i]));
			} else if (algorithm == "shaker") {
				sortedArrays.push(shakerSort(arraysLengths[i], arraysWithValues[i]));
			} else if (algorithm == "quick") {
				sortedArrays.push(quickSort(arraysWithValues[i]));
			}
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
}

function prepareEnvironmentForNextSort() {
	allMiddleValuesOfTime = [];
	sortedArrays = [];
}

function printResults() {
	console.log();
	console.log("Algorithm execution time:");
	for (let i = 0;i < arraysLengths.length;i++) {
		console.log("n = ", arraysLengths[i], "t = ", allMiddleValuesOfTime[i]);
	}
	console.log("Minimal time for n = 100000, t = ", minTime);
	console.log("Maximum time for n = 100000, t = ", maxTime);

	console.log();
	console.log("n: ");

	for (let i = 0;i < arraysLengths.length;i++) {
		console.log(arraysLengths[i]);
	}

	console.log();
	console.log("t: ");

	for (let i = 0;i < arraysLengths.length;i++) {
		console.log(allMiddleValuesOfTime[i]);
	}
	console.log();
}

runSort("insertion");
printResults();
prepareEnvironmentForNextSort();
runSort("bubble");
printResults();
prepareEnvironmentForNextSort();
runSort("shaker");
printResults();
prepareEnvironmentForNextSort();
runSort("quick");
printResults();
