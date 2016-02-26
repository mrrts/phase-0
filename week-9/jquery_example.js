// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body');
h1Element = $('h1');
headerElement  = $('header');
mascotClass = $('.mascot');
logoElement = $('.mascot img');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

mascotClass.css({'border': '2px solid #000'})
logoElement.css({'border': '3px dashed #000'})

cohort = $('.mascot h1')
cohort.html()

//RELEASE 4: Event Listener
  // Add the code for the event listener here
var smiley = 'http://1.bp.blogspot.com/-n4re1AOb5x0/U-WP0ppwr5I/AAAAAAAALhY/QgFS0Bmp6Ug/s1600/cute-wink-smiley.png';
var height = $('.mascot img').height();
// $('.mascot img').mouseover(function(){
//     $(this).attr('src', smiley);
//   });

//RELEASE 5: Experiment on your own

$('img').hover(function(){
    $(this).attr('src', smiley);
    setTimeout(function (that) {
    	console.log('One second after hover event!');
    	that.animate({
   			opacity: .2,
   			height: '70px'
   		},3000, function() {
   			console.log('Animation is finished!');
   		});
    }, 1000, $(this)); 	
  }, function () {
  	$(this).attr('src', 'dbc_logo.png');
  	$(this).css({
  		height: height,
  		opacity: 1
  	});
  });




})  // end of the document.ready function: do not remove or write DOM manipulation below this


// REFLECTION

// --- What is jQuery?

// jQuery is a popular js library that allows you to easily select different elements in the DOM and manipulate them using 
// simple, chainable functions. 


// --- What does jQuery do for you?

// jQuery allows you to manipulate DOM elements, make animations, make AJAX calls, and any other thing that would otherwise take 
// longer using plain javascript. 


// --- What did you learn about the DOM while working on this challenge?

// I learned a little more how the DOM is a javascript-object representation of the HTML source document's element hierarchy, and each
// element in the DOM is a usable JS object with its own properties and methods. 
