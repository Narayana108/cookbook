var animals = ["monkey","dog","cat", "peacock", "horse", "parrot"];
var number = [ 2, 4, 5, 6, 7, 8, 1];
var mixedDataTypes = [2.5, 1, "laptop", 1024, false];

console.log("Position of array:");
console.log(animals[1]);
console.log(number[1]);
console.log(mixedDataTypes[1]);

console.log();
console.log("Array Methods:");

console.log("Array Length:");
var amountOfAnimals = animals.length; //.lenght is syntax to display arrays
console.log(amountOfAnimals);
console.log(number.length); // sort() is syntax to display array
console.log(mixedDataTypes.length);

console.log("Array Sort:");
console.log(animals.sort()); // sort() is syntax to display array

var amountOfNumbers = number.sort();
console.log(amountOfNumbers);
console.log(mixedDataTypes.sort());

console.log("To String:");
console.log(animals.toString());
//var animals1 = "cat,dog,horse,monkey,parrot,peacock";
console.log(amountOfNumbers);


console.log("Pop and Push:");
console.log(animals.pop()); //removes last element from the array
// The reason why peacock was removed, is because we sorted the array. Therefor peacock became the last element
animals.push("mouse"); //adds a new element to an arrah
console.log(animals);

animals[0] = "tiger";
console.log(animals);

// How to add a new item at a specific index in an array.
//array.splice(index of new element, remove count, newItem, newItem)
//The first parameter (2) defines the position where new elements should be added (spliced in).
//The second parameter (0) defines how many elements should be removed.
//The third parameter (newItem) can be 1 or more
animals.splice(2, 0, "rat");
console.log(animals);


