const visitingTime = 60; // minutes
const radhaKundDistance = 20;   //km's (To Radhakund and back)
const govardhanDistance = 40;   //km's (To Radhakund and back)
const barsanaDistance = 80;    //km's (To Radhakund and back)

const places= {
    Radhakund: {
        price: radhaKundDistance,
        time: radhaKundDistance + visitingTime,
        distance: radhaKundDistance 
    },
    Barsana: {
        price: barsanaDistance,
        time: barsanaDistance + visitingTime,
        distance: barsanaDistance 
    }, 
    Govardhan: {
        price: govardhanDistance,
        time: govardhanDistance + visitingTime,
        distance: govardhanDistance 
    }
}

function yatra(name, money, time) {
    let destinationsReached = [];

    console.log(`${name} has ${money} ruppees and ${time}min time available`);
    console.log();

    for (const key in places) {
        console.log(`Visting: ${key}`)
        console.log(`Total Cost: ${places[key].price} ruppees`);
        console.log(`Total Distance: ${places[key].distance} km`);
        console.log(`Total Time needed: ${places[key].time} min`);
        console.log();

        if (money >= places[key].price && time >= places[key].distance) {

            destinationsReached.push(key)
            time = time - places[key].time;
            money = money - places[key].price;

            console.log(`${key} - Completed`)
            console.log(`Time Remaining: ${time}min`);
            console.log(`Ruppees Remaining: ${money}`);
            console.log();
            console.log('---------------------------------------');
        } else {
            console.log(`Unable to visit ${key}`);
        }
        console.log();
    }

    return destinationsReached;
}

var puskar = yatra("Puskar", 100, 80);
console.log(`Places visited: ${puskar}`);

//var sumit = yatra("Sumit", 6200, 220);
//console.log(`Places visited: ${sumit}`);
