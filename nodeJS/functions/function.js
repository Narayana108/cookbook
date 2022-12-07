// A JavaScript function is a block of code designed to perform a particular task.
// A JavaScript function is executed when "something" invokes it (calls it).

// function is like a variable that can manipulate variables  

function print(val) {
    console.log(val);
}

print("Hello");
print("World");

function sum(val1, val2) {
    return val1 + val2;   // return is used to assign the output of the function 
                          // to a variable that invokes the function
    // No code can be executed after a return
}

var sum1 = sum(2, 4);
console.log(sum1);

function nothing() {
    let a = "a function does not need";
    return a + " values";   
}

var bb = nothing();
console.log(bb);