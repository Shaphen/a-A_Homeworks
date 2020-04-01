//___________________________________________________________________________
// Phase 1 - JS Fundamentals
//___________________________________________________________________________

// Mystery Scoping with var, let, const
// Test out each of following functions in Node.What does each log to the console ?
// Do any of them throw errors ? See if you can figure out why.

// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

//___________________________________________________________________________

// madLib
// Write a function that takes three strings - a verb, an adjective, and a noun - 
// uppercases and interpolates them into the sentence "We shall VERB the ADJECTIVE NOUN".
// Use ES6 template literals.

function madLib(verb, adj, noun) {
    v = verb.toUpperCase()
    a = adj.toUpperCase()
    n = noun.toUpperCase()
    console.log("We shall " + v + " the " + a + " " + n);
}

// example,
console.log(madLib('make', 'best', 'guac'));
// "We shall MAKE the BEST GUAC."

//___________________________________________________________________________

// isSubstring
// Input:
// 1) A String, called searchString.
// 2) A String, called subString.
// Output: A Boolean "true" if the subString is a part of the searchString.

function isSubstring(searchStr, subStr) {
    for (let i = 0; i < searchStr.length; i++) {
        if (subStr == searchStr) {
            return true
        }
    }
}

isSubstring("time to program", "time")
// true
isSubstring("Jump for joy", "joys")
// false

//___________________________________________________________________________
// Phase II - JS Looping Constructs
// Carry on! Know your loops!
//___________________________________________________________________________

// fizzBuzz
// 3 and 5 are magic numbers.

// Define a function fizzBuzz(array) that takes an array and returns a new array
// of every number in the array that is divisible by either 3 or 5, but not both.

//___________________________________________________________________________

// isPrime
// Define a function isPrime(number) that returns true if number is prime.
// Otherwise, false.Assume number is a positive integer.

isPrime(2)
// true
isPrime(10)
// false
isPrime(15485863)
// true
isPrime(3548563)
// false

//___________________________________________________________________________

// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum of 
// the first n prime numbers.Hint: use isPrime as a helper method.

sumOfNPrimes(0)
// 0
sumOfNPrimes(1)
// 2
sumOfNPrimes(4)
// 17