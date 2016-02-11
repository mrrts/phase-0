// Bulk Up
// PSEUDOCODE
// create a function that takes an array
//   this array contains objects representing athletes, each athlete has two properties: name, event
//   function will add a third property to each athlete - the win property.
// the win property will print a string containing the other two properties
//   the win property will then actually be a function

var athletes = [{name: "Michael Jordan", sport: "Basketball"}, {name: "Tonya Harding", sport: "Figure Skating"}];

function add_win(array) {
  for (var index = 0; index < array.length; index++) {
    // athletes[index]["win"] = athletes[index]["name"] + " is the best at " + athletes[index]["sport"]
    athletes[index]["win"] = function() {
      console.log(this.name + " is the best at " + this.sport);
    }
  }
}

add_win(athletes);
athletes[1].win();


// PSEUDO
// define function that accepts a string
// Define a new string variable, empty
// Use a FOR loop to iterate through string characters end to start
// Add each character to the new string, one by one
// Return new string

function reverse_string (str) {
  var new_string = '';
  for (var i = str.length - 1; i >= 0; i--) {
    new_string += str.charAt(i);
  }
  return new_string;
}

console.log(reverse_string('Hello my name is Ryan!'));

var numbers = [1,2,3,4,5,6,7,8];
// non-destructive
function even_numbers(array) {
  var new_array = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      new_array.push(array[i]);
    }
  }
  return new_array;
}

console.log(even_numbers(numbers));
//destructive
function even_numbers(array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 != 0) {
      array.splice(i, 1)
    }
  }
  return array;
}

console.log(even_numbers(numbers));


function Athlete (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
  this.greet = function() {
    return "My name is " + this.name + ", and I'm " + this.age + " years old.";
  };
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// var tigerWoods = new Athlete("Tiger Woods", 43, 'golf', 'Wow! A hole in one!');

// console.log(tigerWoods.greet);
// console.log(michaelPhelps.greet);

// tigerWoods.name = "Bobby Flay";

// console.log(tigerWoods);
// console.log(tigerWoods.greet());

// tigerWoods.name = "Phillip Jones";

// console.log(tigerWoods.greet());
// console.log(tigerWoods.name);

// tigerWoods.age++;

// tigerWoods.howOld = "I am " + tigerWoods.age + " years old.";

// console.log(tigerWoods.greet());
// console.log(michaelPhelps.prototype);


// REFLECTION

// --- What JavaScript knowledge did you solidify in this challenge?
//  
// We learned a lot about using the this keyword to reference object properties inside of other object properties
// and also setting functions as the values of object properties. We also practiced with for-loops and the charAt function.

// --- What are constructor functions?
//
// Constructor functions are functions that create a new object... They serve as the template for a certain type of object,
// which makes them very similar to class definitions in other languages like Ruby. 

// --- How are constructors different from Ruby classes (in your research)?
//
// Constructors are the Ruby class definition and its initialize method all in one, and it defines the "instance variables"
// and the "methods" all together as different properties.




