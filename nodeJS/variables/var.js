//Variables and data types

var myName = "Nitya"    //string - has quotes
var age = 36            //integer - number
var height = 1.8        //float - number
var vax = false         //boolean - true or false

console.log("Name: " + myName);
console.log("Age: " + age);
console.log("Height: " + height + "m");
console.log("Vaxed: " + vax);

console.log();
console.log(`We have a new student. His name is ${myName}, his age is: ${age}, he is ${height}m tall`); 
// backticks are used to put variables into a string with the ${}

console.log();
console.log(typeof myName); // typeof is used to identify the type
console.log(typeof age);
console.log(typeof height);
console.log(typeof vax);

console.log();
const sun = "bright"; // const declares the varilable and does not change 
console.log(sun);

//sun = "dark"; // if trying to change, Node.js will display an error
//console.log(sun);

//comment
