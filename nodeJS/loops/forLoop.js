// a forLoop first checks the condition and then executes the code 
// a forLoop stops when the condition is true

for (let step = 0; step < 5; step++) {
    // Runs 5 times, with values of step 0 through 4.
    console.log(step);
    console.log('Walking east one step');
}

// step++ -> step(0) = step(0) + 1

// The above loop will execute step++ 5 times.
//step(0) = step(0) + 1
//step(1) = step(1) + 1
//step(2) = step(2) + 1
//step(3) = step(3) + 1
//step(4)

console.log("The above in reverse");
for (let step = 4; step > -1; step--) {
    // Runs 5 times, with values of step 0 through 4.
    console.log(step);
    console.log('Walking east one step');
}

// step-- -> step(0) = step(0) - 1

// The above loop will execute step-- 5 times.
//step(4) = step(4) - 1
//step(3) = step(3) - 1
//step(2) = step(2) - 1
//step(1) = step(1) - 1
//step(0)
