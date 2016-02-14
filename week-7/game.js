// NOTE:
// This is to be used in conjuction with game.html

function MemoryGame (num_cards) {
	this.moves = 0;
	this.games = 0;
	this.num_cards = num_cards;
};


function random_in_range (min, max) {
	return Math.floor(Math.random() * (max - min) + min);
};


function shuffle_array (arr, times_to_shuffle) {
	var new_array = Array(arr.length).fill(null);
	for (var i = 0; i < arr.length; i++) {
		var random_index = random_in_range(0, new_array.length);
		new_array.splice(random_index, 0, arr[i]);
	}
	while(new_array.indexOf(null) !== -1) {
		new_array.splice(new_array.indexOf(null), 1); // Delete the nulls
	}
	return new_array;
};


function build_deck (total) {
	var cards = [];
	var total_items = (total % 2 == 0) ? total : (total - 1); // Even number for pairs
	while(cards.length < total_items) {
		var random_number = random_in_range(1, 100);
		if (cards.indexOf(random_number) === -1) { // Not already in grid (avoid duplicates)
			cards.push(random_number, random_number); // The card and its match
		}
	}
	return shuffle_array(shuffle_array(cards)); // shuffle twice for more mixture
};


function selected () {
	return document.getElementsByClassName('selected');
};


function update_scoreboard () {
	document.getElementById('moves').innerText = String(game1.moves);
	document.getElementById('games').innerText = String(game1.games);
};


function check_board () {
	var select = selected();
	if (select.length === 2) {
		if (select[0].innerText === select[1].innerText) {
			select[0].className = "card matched";
			// second item now has index 0 because first one no longer has class 'selected'
			select[0].className = "card matched"; 	
		}
		else {  // unmatching pair
			setTimeout(function () {
				select[0].className = 'card';
				select[0].className = 'card';
			}, 1000);
		}
		game1.moves += 1;
	}
	if (document.getElementsByClassName('matched').length === game1.num_cards) { // game is won
		document.getElementsByTagName('body')[0].className += ' winner';
		game1.games += 1;
	}
	update_scoreboard();
};


function draw_grid (items) {
	var card_grid = document.getElementById('card-grid');
	for(var i = 0; i < items.length; i++) {
		var card = document.createElement('p');
		card.className += ' card';
		card.innerHTML = "<span>" + String(items[i]) + "</span>";
		card_grid.appendChild(card);
	}
	var cards = document.getElementsByClassName('card');
	for (var i = 0; i < cards.length; i++) {
		// Set the onclick property for each card
		cards[i].onclick = function () {
			if (this.classList.contains('matched')) {
				// Don't do anything on matched cards
				return;
			}
			else if (selected().length !== 2) {
				this.className += ' selected';
				check_board();
			}
		}
	}
};

                
document.getElementById('new-cards').onclick = function () {
	document.getElementById('card-grid').innerHTML = "";
	document.getElementsByTagName('body')[0].className = "";
	draw_grid(build_deck(game1.num_cards));
};


// Confirm window reload
window.onbeforeunload = function () {
     return "Reloading will create erase the scoreboard and make a new game.";
};


game1 = new MemoryGame(20);


// --What was the most difficult part of this challenge?

// It was hardest to accomplish this without using jquery, which I have some experience with. It was educational to
// see how pure javascript works, particularly in DOM manipulation. I also got stuck in my check_board() function, 
// not sure why it "forgot" about one of the items in the array, but I realized that the selection was made by checking for 
// classes, and the change of the class in the first item effectively made the second item the new first/only item.

// --What did you learn about creating objects and functions that interact with one another?

// I learned about the ins and outs of using the this keyword and also adding functions as properties on an object.

// --Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I really didn't. There aren't many handy built-in methods like in Ruby, and I had to write my own random-in-range
// and array-shuffle functions.

// --How can you access and manipulate properties of objects?

// You use either the dot syntax or the [bracket] syntax to access the properties of objects, and then you can
// assign new values to those properties using the assignment = operator. If the property is a function, you can
// invoke it by accessing the property and then appending the parentheses(). 
