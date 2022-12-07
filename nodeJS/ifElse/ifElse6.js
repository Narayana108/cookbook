// create a variable called element1 and element2
// display the correct dosha according the combination of element1 & element2
// air + ether = vatta
// fire + water = pitta
// earth + water = kapha
// if 2 elements are the same display an error


var element1 = "air"
var element2 = "ether"

if (element1 === element2) {
    console.log(`elements should be unique`);
} else if (element1 === "air" && element2 === "ether") {
     console.log(`vatta = ${element2} + ${element1}`); 
} else if (element1 === "fire" && element2 === "water") {
    console.log(`pitta = ${element1} + ${element2}`);
} else if (element1 === "earth" && element2 === "water") {
    console.log(`kapha = ${element1} + ${element2}`);
} 


/////

//else if (element1 || element === "fire" ||  "water" || "earth")


