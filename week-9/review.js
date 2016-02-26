
console.log('Hi Dan');
console.log('Hi Ryan');

// Requirements

// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)


// PSEUDOCODE:

// 1. Create an object literal, saved to a variable
// 2. Add a 'food_items' property which is itself an empty object
// 3. Add properties which are functions that modify the food_items list
//   - add an item
//   - remove an item
//   - update the qty of an item
//   - print out the list
  
// 4. Use driver code to use these methods to modify the food_items list


// var grocery_list = {
//     food_items: {},
//     add_item: function (item, qty) {
//       this.food_items[item] = qty;
//     },
//     remove_item: function (item) {
//       delete this.food_items[item];
//     },
//     update_qty: function (item, qty){
//       this.food_items[item] = qty;
//     },
//     print_list: function () {
//       console.log('ITEMS IN LIST:');
//       for (var item in this.food_items) {
//         console.log(item + ': ' + this.food_items[item]);
//       }
//     }
// };


// REFACTORED as constructor

function GroceryList (initial_list) {
  this.food_items = initial_list || {};
  this.update_item = function (item,qty){
    this.food_items[item] = qty;
    this.print_list();
    };
  this.remove_item = function (item) {
    delete this.food_items[item];
    this.print_list();
  };
  this.remove_single_item = function (item) {
    if (this.food_items[item] > 1) {
      this.food_items[item]--;
      this.print_list();
    }  
    else if (this.food_items[item] === 1) {
      this.remove_item(item);
    }
  };
  this.print_list = function () {
    console.log('ITEMS IN LIST:');
    for (var item in this.food_items) {
      console.log(item + ': ' + this.food_items[item]);
    }
  };
  
};

var myList = new GroceryList ({
  bananas: 5,
  grapes: 2
});
  
var ryandanlist = new GroceryList ({
  baguettes: 10,
  "Foot Cream": 3
});
  

myList.update_item('grapes', 1);

myList.update_item("Foot Cream", 500);
myList.remove_item('bananas');
myList.remove_single_item('grapes');

