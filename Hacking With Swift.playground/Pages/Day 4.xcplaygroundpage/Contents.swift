//: [Previous](@previous)

/*:
 ## Day 4 - Complex Data Types Part 2
 ### Big Takeways:
 - Swift uses type inference to determine the types of constants and variables.
 - Type annotations can be used to assign a type to empty variables/constants. They can also be used to override Swift's type inference.
 
 */


import Cocoa
let surname: String = "Lasso"
var score: Int = 0
let pi: Double = 3.141
var isAuthenticated: Bool = true
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

//Type Annotation for arrays
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

//Type Annotations for constants
let username: String
username = "@twostraws"
print(username)


//Checkpoint 2
let fruit = ["🍎", "🍏", "🍎", "🍎", "🍌"]
print("Items: \(fruit.count)")
let uniqueFruit = Set(fruit)
print("Unique Items: \(uniqueFruit.count)")

//: [Next](@next)
