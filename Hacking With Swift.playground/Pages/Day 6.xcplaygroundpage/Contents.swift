//: [Previous](@previous)
/*:
 ## Day 6 - Loops
 ### Big Takeways:
 - Swift has another range `..<` that includes the first number but excludes the second number. `..<` can be helpful when using arrays.
 - If a loop variable isn't needed or wanted, it can be replaced with an underscore (see line 25 for syntax).
 - You can get a range of values from an array like so `arr[1...3]`.
 - There are also one-sided ranges such as `arr[1...]` which gets values from the first index to the end of an array.
 - Ranges can be assigned to variables i.e. `let count = 1...3`.
 
 */

import Cocoa

///For Loops
//Loop goes from to 1 through 5.
for i in 1...5 {
    print(i)
}

//Different range based loop that excludes the last number.
//This loop goes from 1 through 4.
for i in 1..<5 {
    print(i)
}

var apples = "I like"

for _ in 1...4 {
    apples += " apples"
}
print(apples)

var roll = 0

///While Loops
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("You rolled a \(roll)")
}

print("Critical hit!")

///Break and Continue
let birds = ["parrot", "bluejay", "red robin", "parrot"]
var parrot = 0

for bird in birds {
    if bird != "parrot" {
        continue
    }
    parrot += 1
}

print(parrot)

///Checkpoint 3
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else {
        print(i)
    }
}
//: [Next](@next)
