require('events').defaultMaxListeners = 15;
const { stdin, stdout } = process;

let b = 0.0;
let h = 0.0;
let x = 0.0;
let y = 0.0;

function f(x, y) {
	return Math.pow((parseFloat(y) + parseFloat(x)), 2);
}

console.log("Cauchy problem. Euler's method");
console.log('Enter starting data: ');

function prompt(question) {
	return new Promise((resolve, reject) => {
		stdin.resume();
		stdout.write(question);

		stdin.on('data', data => resolve(data.toString().trim()));
		stdin.on('error', err => reject(err));
	});
}

async function main() {
	try {
		x = await prompt("x0: ");
		y = await prompt("y0: ");
		b = await prompt("b: ");
		h = await prompt("h: ");

		stdin.pause();

		run();
	} catch(error) {
		console.log("There's an error!");
		console.log(error);
	}
	process.exit();
}

main();

function run() {
	while (x <= parseFloat(b) - parseFloat(h) / 2) {
		y = parseFloat(y) + parseFloat(h) * f(x, y);
		x = parseFloat(x) + parseFloat(h);
		console.log('x=',x.toFixed(2),' y=',y);
	}
}

