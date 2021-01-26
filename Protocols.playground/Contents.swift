import UIKit

class Shoe: CustomStringConvertible {
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
let yourShoe = Shoe(color: "Red", size: 8, hasLaces: false)


print(myShoe)
print(yourShoe)


struct Employee: Equatable, Comparable, Codable {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var phoneNumber: String
    
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName ==
              rhs.lastName && lhs.jobTitle == rhs.jobTitle &&
              lhs.phoneNumber == rhs.phoneNumber
    }
    
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.lastName < rhs.lastName
    }
    
}

let employee1 = Employee(firstName: "Ben", lastName: "Atkins",
jobTitle: "Front Desk", phoneNumber: "415-555-7767")
let employee2 = Employee(firstName: "Vera", lastName: "Carr",
jobTitle: "CEO", phoneNumber: "415-555-7768")
let employee3 = Employee(firstName: "Grant", lastName: "Phelps",
jobTitle: "Senior Manager", phoneNumber: "415-555-7770")
let employee4 = Employee(firstName: "Sang", lastName: "Han",
jobTitle: "Accountant", phoneNumber: "415-555-7771")
let employee5 = Employee(firstName: "Daren", lastName:
"Estrada", jobTitle: "Sales Lead", phoneNumber: "415-555-7772")

let employees = [employee1, employee2, employee3, employee4,
employee5]

let sortedEmployees = employees.sorted(by: >)

for employee in sortedEmployees {
    print(employee)
}

let ben = Employee(firstName: "Ben", lastName: "Atkins", jobTitle: "Front Desk", phoneNumber: "032423492")
let jsonEncoder = JSONEncoder()

if let jsonData = try? jsonEncoder.encode(ben),
    let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}


protocol FullyNamed {
    var fullName: String { get }
    
    func sayFullName()
}

struct Person: FullyNamed {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func sayFullName() {
        print(fullName)
    }
}
