var car1 = "volvo";
var car2 = "vw";
var car3 = "mercedesBenz";
var colors = "silver, white, red";

// combines strings together
var allCars = car1.concat(" ", car2, " ", car3, " are awesome");
console.log(allCars); 

// turns a string into Uppercase
console.log(car2.toUpperCase());

// replaces a word or letters in a string
console.log(colors.replace("white","black"));

// removes a part of a string by the given string positions
console.log(colors.substring(0,6));

// removes first 4 letters 
var car1 = car1.slice(4);

// displays length of a string
var car1Length = car1.length;
console.log(car1Length);
