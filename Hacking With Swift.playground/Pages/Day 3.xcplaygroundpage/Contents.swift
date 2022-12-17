//: [Previous](@previous)
/*:
 ## Day 3 - Complex Data Types Part 1
 ### Big Takeways:
 
 **Arrays**
 - There are 3 different ways to create an array:
    - Directly: `let nums = [1, 2, 3, 4]`
    - Array Datatype: `var truth = Array<Bool>()`
    - Shorthand Syntax: `var names = [String]()`
 - `.reversed()` has a time complexity of O(1) as it returns a `ReversedCollection` type that returns the original array but will access the elements in reversed order
 
 **Dictionaries**
 - When reading dictionaries, Swift will create a warning that states a value for a key may or may not exist, which is an `optional`. That is why when reading a dictionary we must drive a `default` parameter to specify what happens in the event the value is not there.
 - Dictionaries cannot have the same keys, so when setting a new value for an exisiting key, Swift will overwrite a value for that key.
 
 **Sets**
 - Sets do not have duplicates and do not keep elements in order. `.insert()` is used for sets versus `.append()` because the set can store items in any order.
 - Sets have advantages over arrays. We may not always want duplicates and want *unique* items. Additionally, sets store items in a highly optimized order versus trying to store items in a fixed, specific order. For instance, running `.contains()` in an array will take at worst O(n) time since if there were 1000 items in the array we'd have to go through each and every element to find it. However, running `.contains()` on a set runs significantly faster.
 
 **Enums**
 - Enums allow for the creation of a data type for a group of values. Swift stores enum cases in an optimized way and also allows for type safety so it prevents accidental mistypes or mispellings.
 
 ### Helpful Methods
 
 **Arrays**
 - `.append`: Adds elements to the end of an array
 - `.contains()`: Checks if the array has a particular element.
 - `.sorted()`: Sorts the array.
 - `.remove(at: index)`: Removes an element at the specificed index.
 - `.removeAll()` : Removes all elements.
 - `.reversed()`: Reverses an array.
 
 **Arrays & Dictionaries**
 - `.count`:  Finds how many elements are in an array
 - `.removeAll()` : Removes all elements.
 
 */

import Cocoa

///Arrays
var amongUs = ["red", "cyan", "yellow", "pink"]
amongUs.append("green")
print(amongUs.reversed())

var squaredNums = Array<Int>()
squaredNums.append(1)
squaredNums.append(4)
squaredNums.append(9)
print(squaredNums)

//Shorthand Syntax
var cats = [String]()
cats.append("Cheetah")
cats.append("Puma")
print(cats)

///Dictionaries
let shapes = [
    "Star": "⭐️",
    "Circle": "🟢",
    "Square": "🟥"
]
//Must use a default parameter when reading from dictionaries
print(shapes["Star", default: "Key not found"])

//Keys and values can be different types
let age = [
    "Bob": 1,
    "Jerry": 4,
    "Maria": 10
]

//Creates an empty dictionary
let partyGuestList = [String : Bool]()

///Sets
let evenNums = Set([2, 4, 2, 6, 8, 10])
print(evenNums)

//Creating An Empty Set
let emptySet = Set<Int>()

///Enums
enum Weekday {
    case Monday, Tuesday, Wednesday, Thursday, Friday
}
var day = Weekday.Monday
day = .Tuesday
print(day)
//: [Next](@next)
