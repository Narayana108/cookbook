// const object_name = {
//     key1: value1,
//     key2: value2
//  }

var car = {
    type: "Fait", 
    model:"500", 
    color:"white", 
    wheels: {
        brand: "dunlop",
        size: "19inch"
    }
};

console.log(typeof car); // object


// Access the value of an object via the key
console.log(car.type)
console.log(car.wheels)
console.log(car.wheels.brand)

console.log();
console.log("Looping through objects:");

for (const key of Object.keys(car)) {
    console.log(key, car[key]);
}
console.log();
console.log();
console.log(Object.keys(car))

console.log();
console.log();

for (const key in car) {
    console.log(car[key]);
}
