//If statments

var height = 1.6
var myName = "Krsna"
var age = 16
var hasTicket = false
var isVIP = false

if (height > 1.55) {
    console.log("Is tall enough");
} else {
    console.log("Too short");
}

if (hasTicket === true) {       //=== absolute equals to
    console.log("Allowed");
} else {
    console.log("Not allowed");
}

if (height > 1.55 && hasTicket === true) {
    console.log("Is allowed on the ride");
} else if (isVIP === true) {
    console.log("Is allowed on the ride because he is a VIP");
} else {
    console.log("Is not allowed on the ride");
}

