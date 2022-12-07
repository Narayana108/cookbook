// create a Variable finger 
// if the finger is thumb display fire
// if the finger is index display air
// if finger is middle display ether 
// if the finger is ring display earth
// if the finger is pinky display water 

var finger = "mudra";

if (finger === "thumb") {
    console.log(`${finger} - fire`);
} else if (finger === "index") {
    console.log(`${finger} - air`);
} else if (finger === "middle") {
    console.log(`${finger} - ether`);
} else if (finger === "ring") {
    console.log(`${finger} - earth`);
} else if (finger === "pinky") {
    console.log(`${finger} - water`);
} else {
    console.log(`${finger} does not exist`);
}