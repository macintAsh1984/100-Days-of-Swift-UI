//: [Previous](@previous)
/*:
 ## Day 8 - Functions Part 2
 ### Big Takeways:
 - Functions can be given default parameters to have a default value. For instance, the .`removeAll()` method as a `keepingCapacity` parameter with a default value of the array's size, n. When `keepingCapacity` is set to `true`, Swift will remove all elements in the array but still have space for n elements.
 - Using default paramters makes code easier to read and reduces code complexity.
 - As an optimization feature, when making space for arrays, Swift makes enough spaces to contain as many as elements as the array has + a little extra to allow the array to grow.
 - Using `error.localizedDescription` allows for you to print errors Apple throws out.
 
 */
import Cocoa

///Default Parameters In Functions
func takeOutLoan(withdrawing: Double = 10_000) {
    print("Withdrawing $\(withdrawing)...")
}
takeOutLoan()

///Handling Errors in Functions
//1. Find all errors that can occur in function
enum UsernameError: Error {
    case short, revealing
}

func checkUsername (_ username: String) throws -> String {
    if username.count < 5 {
        throw UsernameError.short
    }
    
    if username == "Ashley" {
        throw UsernameError.revealing
    }
    
    if username.count < 8 {
        return "Ok"
    } else {
        return "Strong Username!"
    }
}

//2. Use do, try, and catch to handle errors
let name = "Ashley"
do {
    let user = try checkUsername(name)
    print("Username quality \(user)")
} catch UsernameError.short {
    print("Username is too short!")
} catch UsernameError.revealing {
    print("Your username is too revealing!")
} catch {
    print("Unexpected error")
}

//Error handling shorthand (used sparingly!)
//let resultingUsername = try! checkUsername(username)
//print("\(resultingUsername)")

///Checkpoint
enum NumberError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ num: Int) throws -> Int {
    var root = 0
    if num < 1 || num > 10_000 {throw NumberError.outOfBounds}
    
    //Calculate the square root by finding a integer where that integer
    //that integer * itself = num.
    for i in 1...num {
        if (i*i == num) {
            root = i
            break
        }
    }

    if root == 0 {throw NumberError.noRoot}
    
    return root
    
}

///Checkpoint 
do {
    let root = try squareRoot(10_000)
    print("The square root is \(root).")
} catch NumberError.outOfBounds {
    print("Your number was out of bounds.")
} catch NumberError.noRoot {
    print("This number doesn't have a root")
} catch {
    print("Unexpected error.")
}


//: [Next](@next)
