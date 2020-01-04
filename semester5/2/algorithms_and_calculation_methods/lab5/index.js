require('events').defaultMaxListeners = 15;
const { stdin, stdout } = process;

let a = 0.0;
let b = 0.0;
let e = 0.0;
let x = 0.0;
let x1 = 0.0;
let k = 0;

function f(x) {
	return x - Math.pow(Math.E, x * Math.log(0.5)) - 1;
}

function f1(x) {
	return 1 - Math.pow(Math.E, x * Math.log(0.5)) * Math.log(0.5);
}

function f2(x) {
	return -Math.pow(Math.E, x * Math.log(0.5)) * Math.pow(Math.log(0.5), 2);
}

console.log("Newtone's method.");

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
		a = await prompt("a: ");
		b = await prompt("b: ");
		e = await prompt("e: ");

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
	if (f(a) * f2(a) > 0) {
		x = a
	} else if (f(b) * f2(b) > 0) {
		x = b
	} else {
		console.log('Period of root isolation was selected incorrectly.');
		process.exit(0);
	}

	k = 0;

	x1 = x;
	k = k + 1;
	x = x1 - f(x1) / f1(x1);
	console.log(' k= ',k,' х=',x,' f=',f(x));

	while ((Math.abs(x1 - x) > e) && (Math.abs(x) > e)) {
		x1 = x;
		k = k + 1;
		x = x1 - f(x1) / f1(x1);
		console.log(' k= ',k,' х=',x,' f=',f(x));
	}
	
	console.log('Root of the equation х = ',x,' f(',x,') = ',f(x),' steps ',k);
}
