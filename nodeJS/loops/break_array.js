array = ["monkey", "horse", "dragon", "rooster"];

for (let i = 0; i < array.length; i++) {
    console.log(array[i]);
    if (array[i] === "dragon") {
      break;
    }
}