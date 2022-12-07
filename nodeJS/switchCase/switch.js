//Switch Case

var fruit = "Grapes"

switch (fruit) {
    case "orange":
        console.log("Oranges are 60 ruppees");
        break; //breaks are to end the switch or loop and execute the command
    case "mango":
        console.log("Mangos are 80 ruppees");
        break;
    case "banana":
        console.log("Banana's are 30 ruppees");
        break;
    case "apple":
        console.log("Apples are 60 ruppees");
        break;
    case "kiwi":
        console.log("Kiwi's are 100 ruppees");
        break;
    default:
        console.log(`${fruit} not available`); // ${} is a syntax which references a variable - and uses backticks
}