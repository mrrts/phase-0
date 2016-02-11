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