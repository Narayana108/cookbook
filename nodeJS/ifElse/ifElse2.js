// Create if statement of freelance pricing
// create variable called rate with you rate per hour
// create variable hours for the hours requested from client
// if a client hires you for 10 or more hours give 10% discount 
// if the client hires you for 20 or more hours give 15% discount
// if the clinet hires you for 30 or more hours give 20% discount
// use both types of console.logs taught, with backticks and with double quotes


var rate = 350;
var hours = 30;
var discount = 0;

// nested if statement
if (rate < 300) {
    console.log("Decline rate offered");
} else {
    console.log("Accept rate offered");

    if (hours >= 10 && hours < 20) { // && means 2 condtions that need to be met
        discount = 10;
        console.log(`Qualifies for ${discount}% discount`);
    } else if (hours <= 20 && hours > 10) {
        discount = 15;
        console.log(`Qualifies for ${discount}% discount`);
    } else if (hours >= 30) {
        discount = 20;
        console.log(`Qualifies for ${discount}% discount`);
    }  else {
        console.log("No discount");
    }
} 


console.log();
console.log(typeof rate);
console.log(typeof hours);