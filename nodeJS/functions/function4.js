// reverse a number

var x = 32243;

//convert number to string
x = x.toString();


function reverse(num) {
    let y = "";  //variable 
    for (let i = num.length - 1; i > -1; i --) { //  num.length - 1( because length of the string starts 1 instead of 0)
        y += num[i]; // variable adding the number at the index
    }
    return y;
}

numReverse = reverse(x); // variable
console.log(numReverse);

