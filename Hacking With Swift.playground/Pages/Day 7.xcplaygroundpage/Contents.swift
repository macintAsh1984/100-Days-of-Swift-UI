//: [Previous](@previous)
/*:
 ## Day 7 - Functions Part 1
 ### Big Takeways:
 - Function parameters follow this format `(label: type)`. This format applies to creating and calling functions.
 - Parameters are placeholders. And arguments are the actual value.
 - Any data made after a function is done executing is destroyed.
 - Use `-> type` in a function declaration to indicate the return type of a function.
 - When a function has **one line that returns a value**, you can remove the `return` keyword.
 - Using the `return` keyword in a function that *does not return a value* will allow the function to exit immediately.
 - Functions can have the same name but different parameters. Swift uses these different parameters to distinguish function calls with the same names.
 - To hide an external name, use an _ before a function parameter name.
 - Swift allows for internal and external parameter names. For example `func printTimesTable(for number: Int)` `number` is an parameter name that is used inside the function (since `for` is a keyword for loops) while `for` is used outside the function i.e. function calls `printTimesTable(for: 5)`.
 
 **Tuples**
 - **Tuples** are another data type that allows for multiple values to be stored. However, they hava fixed size + a variety of data types
 - Unlike dictionaries, Swift always knows there is a value present. In that sense, repeating the names of those values are not needed in the `return` statement.
 - Indices can also be used to access tuple values.
 - **Destructuring** lets you pull a function's return tuple out into a separate variables constants.
 - You can use the _ to eliminate one of the tuple values if it's not needed.
 
 */
import Cocoa

let name = "friend"
enum Options {
    case eat, sleep
}

///Functions & Parameters
func tasks(name: String, option: Options) {
    print("Hello \(name). Here is what you'll do today:")
    print("You will \(option).")
}

tasks(name: name, option: .sleep)

///Returning From Functions
func diceRoll() -> Int {
    return Int.random(in: 1...6)
}
let dice = diceRoll()
print(dice)

//Return is removed because one line of code returns a value.
func sameLetterStrings(str: String, str2: String) -> Bool {
    str.sorted() == str2.sorted()
}
print(sameLetterStrings(str: "abc", str2: "cab"))

//Create a Pythagorean Theorem fucntion
func pythagoreanThm(a: Double, b: Double) -> Double {
    let cSquared = pow(a, 2) + pow(b, 2)
    let hypotenuse = sqrt(cSquared)
    return hypotenuse
}

//One liner
func pythagoreanThm2(a: Double, b: Double) -> Double {
    sqrt(pow(a, 2) + pow(b, 2))
}

print(pythagoreanThm2(a: 3, b: 4))

///Returning multiple values from functions
func cartoons() -> (show1: String, show2: String) {
    (show1: "KND", show2: "Chowder")
}

let cartoonNetworkShows = cartoons()
print("I like \(cartoonNetworkShows.show1) and \(cartoonNetworkShows.show2).")

//Removing tuple value types
func nickCartoons() -> (show1: String, show2: String) {
    ("Spongebob", "Fairly Odd Parents")
}

let nickShows = nickCartoons()
print("Today's nick shows: \(nickShows.show1) and \(nickShows.show2)")

//Tuple with no named values + accessing values with indices.
func disneyCartoons() -> (String, String) {
    ("Gravity Falls", "Fish Hooks")
}
print("Watch \(disneyCartoons().0) and \(disneyCartoons().1)!")

//Using Destructuring
let (gravityFalls, fishHooks) = disneyCartoons()
print("Watch \(gravityFalls) and \(fishHooks)")

///Cutomizing Parameter Labels
//Removing parameter lables
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

//Having Internal + External Parameter Labels
func partyTime(for partyList: [String]) {
    for people in partyList {
        print(people)
    }
}
let inviteList = ["Jake", "Sophia", "Hannah", "Steve"]
partyTime(for: inviteList)

//: [Next](@next)
