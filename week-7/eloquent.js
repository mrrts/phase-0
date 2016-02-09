// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var greeting = 'hello';

console.log(greeting);


function askAboutFood () {
	food = prompt('What is your favorite food?');
	console.log(food + ' is my favorite food, too!');
}

function fizzBuzz (countTo) {
	for (var i = 1; i <= countTo; i++) {
		message = "";
		if (i % 3 == 0) 
			message += 'Fizz';
		if (i % 5 == 0) 
			message += 'Buzz';
		console.log(message || i);
	}
}

// fizzBuzz(100);

function min (a, b) {
	if (a === b)
		return "Equal";
	return (a < b) ? a : b;
}

// console.log(min(5, 7));

me = {
	name: "John Doe",
	age: "99",
	favorite_foods: ["Pizza", "Curry", "Donuts"],
	quirk: "Can speak 45 languages, give or take"
}

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board



// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.