// Javascript array homework:

// 1.- Create an array called "fruits" with following items: "Banana", "Orange", "Apple", "Mango".
// 2.- Display(console.log) the last item in the array
// 3.- Add "Grapes" in the first item of the array.
// 4.- Remove "Apple" from the array
// 5.- Add "Pear" as the last item in the array
// 6.- Add "Lemon" in 2nd index of the array
// 7.- Remove the last item from the array
// 8.- Remove the 2nd Item from the array.
// 9.- Create an array called vegetables with the following items: "Potato", "Broccoli", "Bindi", "Tomato".
// 10.- Create a new array called: "fruitVeg". Combined the fruit and vegetables array into this new array.
// 11.- Sort  the fruitVeg array in descending order.
// 12.- Display the length of the fruitVeg array
// How many items are in the array

//Create an array called "fruits" with following items: "Banana", "Orange", "Apple", "Mango".
var fruits = ["Banana", "Orange", "Apple", "Mango"];

console.log(fruits.length);
//Display(console.log) the last item in the array
console.log("Last item in array:"); 
console.log(fruits[fruits.length - 1]);
console.log();

//Add "Grapes" in the first item of the array.
fruits.splice(0, 0, "Grapes");
console.log("Grapes added in the first item of the array:");
console.log(fruits);
console.log();


// Remove "Apple" from the array
fruits.splice(3, 1);
console.log('Remove "Apple" from the array');
console.log(fruits);
console.log();

//Add "Pear" as the last item in the array
fruits.splice(4, 0, "Pear");
console.log('Add "Pear" as the last item in the array');
console.log(fruits);
console.log();

//Add "Lemon" in 2nd index of the array
fruits.splice(1, 0, "Lemon");
console.log('Add "Lemon" in 2nd index of the array');
console.log(fruits);
console.log();

//Remove the last item from the array
fruits.splice(5, 1);
console.log("Remove the last item from the array");
console.log(fruits);
console.log();

//Remove the 2nd Item from the array.
fruits.splice(1, 1);
console.log("Remove the 2nd Item from the array.");
console.log(fruits);
console.log();



// Create an array called vegetables with the following items: "Potato", "Broccoli", "Bindi", "Tomato".   
var vegtables = ["Potato", "Broccoli", "Bindi", "Tomato"];

//Create a new array called: "fruitVeg". Combined the fruit and vegetables array into this new array.
var fruitVeg = ["Banana", "Orange", "Apple", "Mango", "Potato", "Broccoli", "Bindi", "Tomato" ]

//Sort  the fruitVeg array in descending order.
var sortfruitVeg = fruitVeg.sort;
    console.log(sortfruitVeg);

// Display the lengh of the fruitVeg array
var lengthfruitVeg = fruitVeg.length;
    console.log(lengthfruitVeg);

//  How many items are in the array   (Copied syntax from ---  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_length_array )
var fruitVeg = ["Banana", "Orange", "Apple", "Mango", "Potato", "Broccoli", "Bindi", "Tomato" ]
var length =  fruitVeg.length;


