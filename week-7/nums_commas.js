// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
//Define a function that accepts an integer as an argument
//Returns the integer as a sting with appropriate commas
//


// Initial Solution
// function commas(x) {
//   if (x < 1000) {
//     return x.toString()
//   }

//   var num_string = x.toString()
//   var reverse_string = ""
//   for (var i = num_string.length - 1; i >= 0; i--) {
//       reverse_string += num_string.charAt(i)
//   }
//   var reverse_with_commas = ""
//   for (var i = 0; i < reverse_string.length; i++) {

//     if (i % 3 == 0 && i != 0){
//       reverse_with_commas += ","
//     }
//     reverse_with_commas += reverse_string.charAt(i)
//   }

//   var final_string = ""
//   for (var i = reverse_with_commas.length -1; i >= 0; i--){
//     final_string += reverse_with_commas.charAt(i)

//   }
//   return final_string
// }




// console.log(commas(30000000));



// Refactored Solution


function commas(x) {
  function reverseIt(str) {
    var reversed = '';
    for (var i = str.length - 1 ; i >= 0 ; i--) {
      reversed += str.charAt(i);
    }
    return reversed;
  }  
  var reverse_string = reverseIt(x.toString()); 
  var reverse_with_commas = ""
  for (var i = 0; i < reverse_string.length; i++) {
    if (i % 3 == 0 && i != 0){
      reverse_with_commas += ","
    }
    reverse_with_commas += reverse_string.charAt(i)
  }

  return reverseIt(reverse_with_commas);
 
}

console.log(commas(3000));




// Your Own Tests (OPTIONAL)




// Reflection

// ----What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// We were not able to rely on a built-in reverse method like Ruby has, so we needed to consider the logical steps included
// in a more manual reversal of a string. Also, Ruby had a variety of convenient iterator methods, while the js for loops 
// are a bit cumbersome and ugly in comparison, in my opinion. 


// ----What did you learn about iterating over arrays in JavaScript?

// We did not split the string into an array because the strings themselves have indexes, and individual characters can be 
// read using the string charAt method, so in this exercise we actually learned about iterating over strings. 


// ----What was different about solving this problem in JavaScript?

// Similar logic but different syntax and methods... and again, we needed to define our own string-reversal method. 


// ----What built-in methods did you find to incorporate in your refactored solution?

// We used the charAt method to access string characters by index. We did not search for a built-in reverse method. We have 
// also incorporated the toString method and the length method, but these were part of the initial solution already. The 
// refactor phase was less about incorporating new methods (mostly due to assuming that they did not exist to the extent
//   that they do in Ruby), and more about DRY-ing the code by making a reverse method and reducing some redundancy in 
// variable declarations. We also eliminated an unneeded if branch at the beginning of the function. 