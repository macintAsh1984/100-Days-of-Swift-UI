//: [Previous](@previous)
/*:
 ## Day 2 - Booleans
 ### Big Takeways:
 - When concatenating strings using +, Swift has to add each and every string
    one at a time, which is inefficient.
 
 ### Helpful Methods
 
 **Booleans**
 - `.toggle()` - toggle a boolean to an opposite state */

import Cocoa

///Booleans
var gameOn = false
gameOn = !gameOn
print(gameOn)

var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

///String Concatenation
print("Today" + "is" + "Tuesday")

///String Interpolation
let today = "Tuesday"
let dateNum = 22
let whatsTheDate = "Today is \(today) the \(dateNum)nd."
print(whatsTheDate)


/// Checkpoint
let celsius = 37.5
var farenheit = ((celsius * 9) / 5) + 32
let weather = "It is \(celsius) °C or \(farenheit) °F"
print(weather)

//: [Next](@next)
