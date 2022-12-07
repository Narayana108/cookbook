// a doWhile loop first executes the code and then checks the condition
// a doWhile stops when the condition is false

let i = 0;

do {
    i += 1;
    console.log(i);
} while (i < 5);

// These two methods are exactly the same
// i += 1 --> i++

// i += i
//i(0) = i(0) + 1
//i(1) = i(1) + 1
//i(2) = i(2) + 1
//i(3) = i(3) + 1
//i(4) = i(4) + 1
//i(5)