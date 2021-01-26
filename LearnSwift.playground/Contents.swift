import Cocoa

print("Hello World!")

var myVariable = 42 // declaring variables
myVariable = 52 // reassignment of variables

let myConstant = 10 // declaring constants (final in Java)

let implicitInteger = 70 // here we infer an Integer type
let implicitDouble = 70.0 // here we infer a Double type
let explicitDouble = 70 // here we explicitly force Swift into creating a double 70.0

let label = "The width is "
let width = 100
let widthLabel = label + String(width) // like Python you have to convert an int to a string in these scenarios

// but there is a simpler way to include int values in strings:
let x = 3
let y = 5
let appleSummary = "I have \(x) apples."
let pearSummary = "I have \(y) pears."
let fruitSummary = "I have \(x + y) fruits."

// create arrays and dictionaries using brackets []
var shoppingList = ["Macbook Pro", "HomePod", "Apple Watch"]
// access elements using array[i]
shoppingList[1] // homepod

var occupations = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic"]

occupations["Jayne"] = "PR"

shoppingList.append("iPad Pro")
print(shoppingList)

// creating an empty array using the initializer syntax
let emptyArray = [String]()
// creating an empty dictionary
let emptyDictionary = [String: Float]()


// if everything can be inferred, you can initialise empty arrays and dictionaries as so:
shoppingList = []
occupations = [:]

// control flow
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print("Team score: \(teamScore)")

var optionalString: String? = "Hello"
print(optionalString == nil) // prints false

var optionalName: String? = "John Appleseed"
//var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello! What is your name?"
}

print(greeting)

/*
 another way to handle optional values is to provide a default value using the ?? operator
 if the optional value is missing, the default value is used instead
 */
let nickname: String? = "Jony Boy"
//let nickname: String? = nil
let fullname: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullname)" // if nickname is nil, then fullname is used

print (informalGreeting)


// Switches
let vegetable = "red pepper"
switch vegetable {
case "Red Pepper":
    print("Add some raisins and make ants on a log")
case "Cucumber", "Watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}
// prints is it a spicy red pepper?
// notice how let can be used in a pattern to assign the value that matched the pattern to a constant
// after executing the code inside of a case the program exists from the switch statement so need for break

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonnaci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("\(largest) belongs to: \(largestKind)") // prints "25 belongs to Square"

// While
var n = 1
while n < 100 {
    n *= 2
}
print(n) // prints "128"

var m = 1
repeat {
    m *= 2
} while m < 100
print(m)

// for loop
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

// use ..< to make a range that omits its upper value and use ... to make a range that includes both values
var secondTotal = 0
for i in 0...4 {
    secondTotal += i
}
print(secondTotal)


// functions and closures
/*
 use func to declare a function
 call a function by following its name by a list of args in parens
 use - to seperate the param names and types from the function's return type
 */
func greet(person: String, on day: String) ->
    String {
        return "Hello \(person), today is \(day)."
}
greet(person: "George", on: "20/92/29")
greet(person: "John", on: "10.01.20")
/*
 by default, functions use their param names as labels for their arguments
 write a custom argument label before the param name
 or use _ to use no argument label
 */

func happyBirthday(person: String, _ dob: String) ->
    String {
        return "Happy Birthday \(person). Yes that's right it' s the \(dob)"
}
happyBirthday(person: "George", "27.11.20")

func calculateStats(scores: [Int]) ->
    (min: Int, max: Int, sum: Int) { // this line defines the return type of the function
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        
        return (min, max, sum)
}

let stats = calculateStats(scores: [5, 3, 100, 3, 9])
print(stats.sum)
print(stats.max)
print(stats.min)

// nested functions
func returnFifteen() -> Int {
    var y = 10
    func add() { // void method just doesn't define a return type
        y += 5
    }
    add()
    return y
}

print(returnFifteen())

// functions can return itself
func factorial(x: Int) -> Int {
    if x == 0 {
        return 1
    }
    
    return x * factorial(x: x - 1)
}

print(factorial(x: 4))

// functions can return another function as its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()
increment(7)

// functions can take another function as one of its arguments
func hasAnyMatches(list: [Int], condition:
    (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func hasLessThanTen(number: Int) -> Bool {
    return number < 10
}


var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: hasLessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

