// "This function exercise" is an Object of an Ifstatment within a forLoop within a function 

const  movies = {
        "krsna": 0,
        "mahabarat": 18,
        "ramayana": 16
}

function checkAge(age) {
    let info = "";
    
    for (const key of Object.keys(movies)) {   
        console.log(key, movies[key]);
        if (age > movies[key]) {
            // '\n' --> new line
            // += --> info = info + string
            info += `${age} - You are old enough to watch ${key}, age restriction: ${movies[key]} \n`;
        } else {
            info += `${age} - You are not old enough to watch ${key}, age restriction: ${movies[key]} \n`;
        }
    }   
    return info;
}

var kishori = checkAge(12);
console.log(kishori);
