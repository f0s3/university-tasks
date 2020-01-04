require('events').defaultMaxListeners = 15;
const { stdin, stdout } = process;

let x = [];
let y = [];
let n = 0;
let i = 0;
let j = 0;
let xx = 0.0;
let L = 0.0;
let P = 0.0;

console.log('Interpolation problem. Polynome of Lagrange.');

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
		n = await prompt("n: ");

		for (let i = 0;i <= n;i++) {
			x[i] = await prompt("x[" + i + "]: ");
		}

		for (let i = 0;i <= n;i++) {
			y[i] = await prompt("y[" + i + "]: ");
		}

		xx = await prompt("xx: ");

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
	L = 0;
	
	for (i = 0;i <= n;i++) {
		P = 1;
	
		for (j = 0;j <= n;j++) {
			if (j !== i) {
				P = P * (xx - x[j]) / (x[i] - x[j]);
			}
		}
		P = P * y[i];
		console.log('Term L(' + i + ') = ' + P);
		L = L + P;
	}
	
	console.log('L = ' + L);
}

