//: [Previous](@previous)
/*:
 ## Day 10 - Structs Part 1
 ### Big Takeways:
 - Struct methods are not allowed to modify struct attributes as struct instances can be constants. To get around this, the `mutating` keyword must be in front of the `func` keyword for any functions that modify struct data. Such functions will only work for struct instances that are variables.
 - Variables/Constants inside a sturct are called **properties**.
 - Functions inside a struct are called **methods**.
 - Creating a variable from a struct is an **instance** of the struct.
 - What is assigned to an instance (i.e. `Cashier(name: "Bob", vacationRemaining: 25)`) is called an **initializer**.
 - Properties that are constants with default values can be removed from intializers. Properties that are variables with default values can remain as parameters in imitalizers and change a proerty's value.
 - **Stored Properties** are variables/constants that contains data inside an instance.
 - **Computed Properties** calculate the value of a property when it is accessed. By deafult, their values are computed, not stored.
 - To write to a computed property, getters and setters must to be created. **Getters** are "code that reads." **Setters** are "code that writes."
 - `newValue` in Swift stores whatever value the user passes in to a computed property.
 - **Property observers** is code that are run when a property's value chagnes. There are two kinds, `didSet` and `willSet`. The purpose of property observes is to prevent events such as forgetting to print a property when a value is updated.
 - `didSet` runs after a property is modified, and `willSet` runs *before* a property is modified.
 - `oldValue` is a keyword in Swift that contains the previous value of a property.
 - Don't put too much work in proerty observers to avoid perforamce issues.
 - To create custom initializers, you must ensure that all properties in a struct have an initial value by the time the initalizer is done.
 - If you create a custom initalizer, you will loose access to Swift's member-wise initalizer, which initalizes an instance of a sttruct based on the order of its properties.
 - Custom initalizers use the `init()` keyword.`init()` does not have a return value.
 - The `self` keyword refers to an instance's specified property. The speciried property would come after the dot (i.e. `self.name`).

 */
import Cocoa

///Structs
struct Snake {
    let color: String
    let type: String
    let length: Double
    
    func aboutSnake() {
        print("This is a \(length) ft, \(color) \(type).")
    }
}

let snek = Snake(color: "green", type: "python", length: 12.0)
print(snek.length)
snek.aboutSnake()

struct Cashier {
    //Struct Properties
    let name: String
    var vacationRemaining: Int
    
    //Method
    mutating func goingOnVacation(days: Int) {
        if vacationRemaining > days {
            print("Vacation Time!")
            vacationRemaining -= days
        } else {
            print("Well, guess I'm working :p")
        }
    }
}
//Instance of a Cashier
//Initalizer: Cashier(name: "Bob", vacationRemaining: 25)
var cashier = Cashier(name: "Bob", vacationRemaining: 25)
cashier.goingOnVacation(days: 14)
print(cashier.vacationRemaining)

///Computed Properties
struct Employee {
    let name: String
    var vacationTime = 21
    var vacationDaysTaken = 0
    
    //Computed Property
    var vacationRemaining: Int {
        get {
            vacationTime - vacationDaysTaken
        }
        
        set {
            vacationTime = vacationTime + newValue
        }
    }

}

var janitor = Employee(name: "Joe")
janitor.vacationDaysTaken += 7
janitor.vacationRemaining = 5
print(janitor.vacationTime)

///Taking Action When A Property Changes
/*Property observers help perform actions as a result
of a property's value changing. For example, in this piece
of code a didSet property observer is used to print a bank
account balance whenever it is updated.*/

struct BankAccount {
    var balance = 0 {
        didSet {
            print("You're account balance is \(balance).")
        }
    }
    
}

var myAccount = BankAccount()
myAccount.balance += 100
myAccount.balance += 1000

//Putting it all together
struct ContactList {
    var contacts = [String]() {
        willSet {
            print("Current contact list: \(contacts).")
            print("Adding \(newValue) to your contact list")
        } didSet {
            print("Contact list updated!")
            print("Number of contacts: \(contacts.count).")
        }
    }
}

var myContacts = ContactList()
myContacts.contacts.append("Tim Cook")
myContacts.contacts.append("Craig Federighi")

///Custom Initializers
struct Person {
    let name: String
    let height: Double
    
    init(name: String, height: Double = 5.3) {
        self.name = name
        self.height = height
    }
    
    func about() {
        print("This is \(name), and they are \(height) ft.")
    }
}

let child = Person(name: "Billy")
child.about()


//: [Next](@next)
