// Create a varirable called food. 
// the food variable will only be: lasange or pizza.
// Create a variable called pizzaTotalCookingTime 
// Create a variable called lasangeTotalCookingTime 
// Create a vairaible called timeInOven
// If the food is not pizza or lasange then display a messaging stating: can only cook pizza or lasange
// Determine the time left to be cooked and display a message stating: Cooking and x minutes remaining
// If the timeInOven was more than the {food}totalCookingTime, then display: burnt


//var food = "lasange";
var food = "pizza";
var timeInOven = 10;
const pizzaTotalCookingTime = 40;
const lasangeTotalCookingTime = 60;

//FOOD OPTIONS
if (food === "pizza") {
    console.log(`Cooking ${food}`);
    if (timeInOven < pizzaTotalCookingTime) {
        console.log(`Cooking time, ${pizzaTotalCookingTime - timeInOven}min remaining`);          
    } else if (timeInOven > pizzaTotalCookingTime) {
        console.log(`Burnt, ${timeInOven - pizzaTotalCookingTime}min overcooked`);
    } else if (timeInOven === pizzaTotalCookingTime) {
        console.log("Cooked");
    }
} else if (food === "lasange") {
    console.log(`Cooking ${food}`);
    if (timeInOven < lasangeTotalCookingTime) {
        console.log(`Cooking time, ${lasangeTotalCookingTime - timeInOven}min remaining`);
    } else if (timeInOven > lasangeTotalCookingTime) {
        console.log(`Burnt, ${timeInOven - lasangeTotalCookingTime}min overcooked`);
    } else if (timeInOven === lasangeTotalCookingTime) {
        console.log("Cooked");
    }    
} else {
    console.log(`${food} not available`);
}






