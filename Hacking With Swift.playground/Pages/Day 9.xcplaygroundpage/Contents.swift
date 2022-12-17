//: [Previous](@previous)
/*:
 ## Day 9 - Closures
 ### Big Takeways:
 - Closures can be thought of as creating in-line functions. Variables can be assigned functionality because of closures.
 - Parameters/return types are inside the curly braces {}. They are also followed by the `in` keyword (i.e. `(name: String) -> String in`).
 - Functions have types based on their parameters/what they return. For instance, a function that take in a string and returns a integer has a type `(String) -> Int
 - When calling a closure or a copy of a function, omit parameter names.
 - Closures can be created within the parameters of Swift library functions such as `sorted()`.
 - When using the `by:` parametere of `.sorted()`, it takes in a function or closure that takes in 2 parameters and returns a boolean.
 - Shorthand Closure Syntax involves using $0, $1, etc. in place of parameter names. However, this xyntax sacrifices readability when it comes to larger code,
 - Closures cannot use external parameter labels.
 - When using `.map` on arrays, you don't have to return the same type as you received. For instance, an array of integers can become an array of strings.
 
 ### Helpful Methods
 **Arrays**
 - `.filter`: Filters elements in the array by a specified characteristic.
 - `.map`: Transforms every element in the array and returns a new array with the transformations applied.
 */

import Cocoa

///Closures
//Creating Closures
let holidayGreeting = {
    print("Happy Holidays!")
}

holidayGreeting()

//Closures With Parameters
let goodMorning = { (name: String) -> String in
    "Good Morning, \(name)!"
}

print(goodMorning("Ashley"))

//Customizing .sorted() using closures
let veggies = ["Pepper", "Cucumber", "Onions", "Ciltrano", "Beets"]
let sortedVeggies = veggies.sorted()
let cucumberFirst = veggies.sorted(by: { (name1: String, name2: String) -> Bool in
    if "Cucumber" == name1 {
        return true
    } else if "Cucumber" == name2 {
        return false
    }
    
    return name1 < name2
})

print(cucumberFirst)

///Shorter Ways To Write Closures
//Omiting The Parameter and Return Types
let beetsFirst = veggies.sorted(by: { name1, name2 in
    if "Beets" == name1 {
        return true
    } else if "Beets" == name2 {
        return false
    }

    return name1 < name2
})
print(beetsFirst)

//Trailing Closure Syntax
let pepperFirst = veggies.sorted{ name1, name2 in
    if "Pepper" == name1 {
        return true
    } else if "Pepper" == name2 {
        return false
    }

    return name1 < name2
}
print(pepperFirst)


//Shorthand Closure Syntax
let onionsFirst = veggies.sorted {
    if "Onions" == $0 {
        return true
    } else if "Onions" == $1 {
        return false
    }

    return $0 < $1
}
print(onionsFirst)

//Using .filter to create a new array with
//things that start with a particular letter
let animals = ["dog", "cat", "fish", "ferret", "parrot"]
let fOnly = animals.filter{ $0.hasPrefix("f") }
print(fOnly)

//Using .map to transform items in an array
let uppercasedAnimals = animals.map{$0.uppercased()}
print(uppercasedAnimals)

///Accepting Functions As Parameters
func doImportantWork (first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first task")
    first()
    print("About to start second task")
    second()
    print("About to start third task")
    third()
}
//Trailing closures pecifies what the functions passed
//into doImportantWork() do.
doImportantWork {
    print("First task complete")
} second: {
    print("First task complete")
} third: {
    print("First task complete")
}

///Checkpoint
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let luckyNumOperations = {
    luckyNumbers.filter{!$0.isMultiple(of: 2)}
    .sorted()
    .map { print("\($0) is a lucky number.") }
}

luckyNumOperations()




//: [Next](@next)
