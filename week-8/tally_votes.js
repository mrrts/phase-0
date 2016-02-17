// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Ryan Smith:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}



// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}



/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1},
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}





// Pseudocode
// Iterate over the voters object
// For each vote for President 

// voteCount[office][candidate] += 1

// __________________________________________
// Initial Solution

//console.log(votes.getOwnPropertyNames()); 

// for (var voter in votes) {
//   for(var office in votes[voter]){  
//     if (voteCount[office][(votes[voter][office])] === undefined) {
//       voteCount[office][(votes[voter][office])] = 0;
//     }
//     voteCount[office][(votes[voter][office])] += 1;
//   }
// }

/*
1. Iterate over voteCount object
2. Run second inside of the office type object
3. Check the key values for the max. 
4. Return the name with max vote count.

*/

// for (var officeType in voteCount) {
//   var winner_votes = 0;
//   var winner = null;
//   for(var candidate in voteCount[officeType]){
//     if (voteCount[officeType][candidate] > winner_votes) {
//       winner_votes = voteCount[officeType][candidate];
//       winner = candidate;
//     }
//   }
//   officers[officeType] = winner;
// }

// console.log(voteCount);
// console.log(officers);




// __________________________________________
// Refactored Solution


for (var voter in votes) {
  for(var office in votes[voter]){
    var candidate = votes[voter][office]; // The name of the person they voted for
    if (voteCount[office][candidate] === undefined) {
      voteCount[office][candidate] = 0;
    }
    voteCount[office][candidate] += 1;
  }
}

for (var office in voteCount) {
  var winner_votes = 0;
  var winner = null;
  for(var candidate in voteCount[office]){
    if (voteCount[office][candidate] > winner_votes) {
      winner_votes = voteCount[office][candidate];
      winner = candidate;
    }
  }
  officers[office] = winner;
}

console.log(voteCount);
console.log(officers);


// __________________________________________
// Reflection

// --- What did you learn about iterating over nested objects in JavaScript?

// If you use the for(var voter in votes) iterator, "voter" only returns the names of the properties. In order to 
// access the values of each of those properties within your loop, you have to reference them as votes[voter]. This
// was unexpected behavior and got my partner and me stuck for a little while. We were used to iterating over hashes in 
// Ruby, which allows you to iterate over the key-value pairs more directly (my_hash.each do |key, val| ...)


// --- Were you able to find useful methods to help you with this?

// We did not use any special methods in this challenge. We were originally exploring Object methods that would 
// return the property names as an array, but we couldn't get them working, and I'm not sure why. I think the final 
// solution is nevertheless clear enough, so I'm not missing special methods in this exercise.   '


// --- What concepts were solidified in the process of working through this challenge?

// This was my first time iterating through a JavaScript object and accessing its properties and values programatically. 
// We have had experience iterating through JS arrays and strings so far, but not objects. This was the most puzzling 
// JS challenge so far in the curriculum, so the struggle was a good stretch toward solidifying that concept.


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)