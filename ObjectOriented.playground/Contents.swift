import Cocoa

class Employee {
    var name: String
    var position: String
    var salary: Double
    
    init(name: String, position: String, salary: Double) {
        self.name = name
        self.position = position
        self.salary = salary
    }
    
    func getName() -> String {
        return self.name
    }
    
    func setName(val: String) {
        self.name = val
    }
    
    func getPosition() -> String {
        return self.position
    }
    
    func setPosition(val: String) {
        self.position = val
    }
    
    func getSalary() -> Double {
        return self.salary
    }
    
    func setSalary(val: Double) {
        self.salary = val
    }
    
    func getSummary() -> String {
        return "name: \(self.name), position: \(self.position), salary: \(self.salary)"
    }
}

let emp1 = Employee(name: "George Baker", position: "Software Engineer", salary: 1000000)
let emp2 = Employee(name: "Adrian David", position: "Hardware Engineer", salary: 90000)

print(emp1.getSummary())
print(emp2.getSummary())

emp1.setSalary(val: emp1.getSalary() * 1.1)
print(emp1.getSalary())


class BankAccount {
    var owner: String
    var balance: Int
    
    init(owner: String, balance: Int) {
        self.owner = owner
        self.balance = balance
    }
    
    func getSummary() -> String {
        return "Owner: \(owner), Balance: \(balance)"
    }
}

let account1 = BankAccount(owner: "George Baker", balance: 100000000)
