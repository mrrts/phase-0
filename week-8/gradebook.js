
/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];

// function average(arr) {
//   var total = 0;
//   for (var i = 0; i < arr.length; i++) {
//     total += arr[i]; 
//   }
//   return total / arr.length;
// }

// var gradebook = {
//     "Joseph": {testScores: scores[0]},
//     "Susan": {testScores: scores[1]},
//     "William": {testScores: scores[2]},
//     "Elizabeth": {testScores: scores[3]},
//     addScore: function(name, grade) {
//       this[name].testScores.push(grade);
//     },
//     getAverage: function(name) {
//       return average(this[name].testScores);
//     }
// };

//gradebook.addScore("Susan", 80);



// __________________________________________
// Write your code below.








// __________________________________________
// Refactored Solution


function average(arr) {
  var total = 0;
  for (var i = 0; i < arr.length; i++) {
    total += arr[i]; 
  }
  return total / arr.length;
}

var gradebook = {
    "Joseph": {testScores: scores[0]},
    "Susan": {testScores: scores[1]},
    "William": {testScores: scores[2]},
    "Elizabeth": {testScores: scores[3]},
    addScore: function(name, grade) {
      this[name].testScores.push(grade);
    },
    getAverage: function(name) {
      return average(this[name].testScores);
    }
};





// __________________________________________
// Reflect

// --- What did you learn about adding functions to objects?

// You just define the value of the property as a function. You do not need to name the function because its name is
// just the property name. A function is a first-class data type in JavaScript. 


// --- How did you iterate over nested arrays in JavaScript?

// To iterate over a nested array, you can iterate over the parent array with a FOR loop and then use another FOR loop
// inside of that one. Alternatively, if you do not need to iterate over the parent array (i.e., you know which of its indexes 
//   you need already), you can simply access the nested array by adding a second bracketed index (my_array[0][2]). 


// --- Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// We used the push and length Array methods. They simply append an item to the end of an array and return the number of items 
// in the array, respectively. 




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)