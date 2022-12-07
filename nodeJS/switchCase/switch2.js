// create variable for day of week
// create a switch case with the 7 days of the week. i.e mon - sun
// display how many hours you will study on that day


var day = "Monday"

switch (day) {
    case "Monday":
        console.log(`On ${day} I study for 10 hours`);
        break; 
    case "Tuesday":
        console.log(`On ${day} I study for 8 hours`);
        break;
    case "Wednesday":
        console.log(`On ${day} I study for 6 hours`);
        break;
    case "Thusday":
        console.log(`On ${day} I study for 5 hours`);
        break;
    case "Friday":
        console.log(`On ${day} I studyt for 4 hours`);
        break;
    case "Saturday":
        console.log(`${day}: Rest day`);
        break;
    case "Sunday":
        console.log(`${day}: Rest day`);
        break;
    default:
        console.log(`${day}: day off`);
}
        console.log();
        console.log(typeof day);