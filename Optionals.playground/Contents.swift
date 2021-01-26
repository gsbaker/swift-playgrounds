import UIKit

struct Book {
    var name: String
    var publicationYear: Int? // ? makes it optional so if we don't have a value we can set the
    // property to nil
}

let firstBook = Book(name: "Harry Potter and the Philosipher's Stone", publicationYear: 1997)
let secondBook = Book(name: "The life of pi", publicationYear: 2004)
let thirdBook = Book(name: "How to introspect", publicationYear: 2020)

let unnanouncedBook = Book(name: "Life of George Baker", publicationYear: nil)

let books = [firstBook, secondBook, thirdBook, unnanouncedBook]

for book in books {
    if let unwrappedPublicationYear = book.publicationYear {
        print("the book was published in \(unwrappedPublicationYear)")
    } else {
        print("this book hasn't been published yet")
    }
}


func printFullName(firstName: String, middleName: String?, lastName:String) {
    if let middleNameUnwrapped = middleName {
        print(firstName + middleNameUnwrapped + lastName)
    } else {
        print(firstName + lastName)
    }
}

printFullName(firstName: "George", middleName: "Stephen", lastName: "Baker")
printFullName(firstName: "Lottie", middleName: nil, lastName: "Baker")


struct Toddler {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

// when you use the failable initialiser to create a Toddler, an optional will be returned
let possibleToddler = Toddler(name: "Joanna", monthsOld: 14)
if let toddler = possibleToddler {
    print("\(toddler.name) is \(toddler.monthsOld)")
} else {
    print("The age that you specified for the toddler is not between 1 and 3 yrs of age")
}


struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingName: String
    var streetName: String
    var apartmentNumber: String?
}

let person = Person(age: 19, residence: Residence(address: Address(buildingName: "Liberty Court", streetName: "Pershore Rd", apartmentNumber: "10a")))

// if let syntax to unwrap
if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("He/she lives in apartment number \(theApartmentNumber)")
        }
    }
}

// there's a better way to do this using optional chaining
// a ? appears BEFORE each optional in the chain e.g. residence?.address because address is optional
if let theAppartmentNumber =
    person.residence?.address?.apartmentNumber {
    print("He/she lives in apartment number \(theAppartmentNumber)")
}

