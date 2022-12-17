//: [Previous](@previous)
/*:
 ## Day 5 - Conditions
 ### Big Takeways:
 - Comparing one string against another and comparing the number of characters in a string to an integer is slow an inefficient. Use `.isEmpty` to check if a string is empty for better optimization.
 - The ternary opertor works in the WTF format: `a condition (what) ? what happens it it's (true) : what happens if it's (false).`
 
 */

import Cocoa

///if statements
let name = ""
let person = "Wendy"

if name.isEmpty || person.isEmpty {
    print("No names")
} else if name < person {
    print("it's \(name)")
} else {
    print("It's \(person)")
}

///Comparing enums
enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
//Prints true since small comes before large.
print(first < second)

//The ternary operator
let big = Sizes.medium < Sizes.large ? "It's medium" : "It's big!"


//: [Next](@next)
