import UIKit

var birthdayIsToday = true
var invitedGuests = ["george", "tim", "phil"]
var cakeCandlesLit = true

//func singHappyBirthday() {
//    if birthdayIsToday {
//        if !invitedGuests.isEmpty {
//            if cakeCandlesLit {
//                print("happy birthday")
//            } else {
//                print("the candles have not been lit")
//            }
//        } else {
//            print("there are no guests")
//        }
//    } else {
//        print("it's nobody's birthday")
//    }
//}
//
//singHappyBirthday()

func singHappyBirthday() {
    guard birthdayIsToday else {
        print("nobody has a birthday")
        return
    }
    
    guard !invitedGuests.isEmpty else {
        print("no invited guests")
        return
    }
    
    guard cakeCandlesLit else {
        print("cake candles have not been lit")
        return
    }
    
    print("happy birthday")
}

singHappyBirthday()


func divide(_ number: Double, _ divisor: Double) {
    guard divisor != 0 else {
        return
    }
    
    let result = number / divisor
    print(result)
}

divide(10, 0)


// guard with optionals
func processBook(title: String?, price: Double?, pages: Int?) {
    if let theTitle = title,
        let thePrice = price,
        let thePages = pages {
        print("\(theTitle) costs $\(thePrice), and has \(thePages) pages.")
    }
}

processBook(title: "Life is great", price: 100.0, pages: 10000)

