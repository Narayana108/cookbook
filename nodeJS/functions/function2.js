const heightLimit = 1.55;
const minAge = 16;

function checkHeight(height) {
    if (height > heightLimit) {
        console.log(`${height} is taller than the height limit ${heightLimit}`);
        return true;
    } else {
        console.log(`${height} is shorter than the height limit ${heightLimit}`);
        return false;
    }
}

function checkTicket(ticket) {
    if (ticket === true) {
        console.log("Valid ticket");
        return true;
    } else {
        console.log("Invalid ticket");
        return false;
    }
}

function checkAge(age) {
    if (age >= minAge) {
        console.log(`Valid age - ${age}`);
        return true;
    } else {
        console.log(`Invalid age - ${age}`);
        return false;
    }
}

function rideAuthorize(height, ticket, age){
    var isTallEnough = checkHeight(height);
    var hasTicket = checkTicket(ticket);
    var isOldEnough = checkAge(age);

    if(isTallEnough === true && hasTicket === true && isOldEnough === true){
        console.log("Allowed !");
        console.log("All conditions met");
        return true;
    } else {
        console.log("Not allowed !");
        console.log("All conditions are not met");
        return false;
    }
}



var ladilee = rideAuthorize(1.6, true, 29);
console.log(ladilee);


var nityananda = rideAuthorize(1.85, false, 36);
console.log(nityananda);