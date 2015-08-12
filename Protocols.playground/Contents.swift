//: Playground - noun: a place where people can play
import Foundation

protocol FullyNamed{
    var fullName:String { get }
}

struct User: FullyNamed{
    var fullName:String
}
let user = User(fullName: "Luiz")

struct Friend: FullyNamed{
    var firstName:String
    var middleName:String
    var lastName:String
    
    var fullName:String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Luiz Carlos", middleName: "Gonçalves", lastName: "dos Anjos")
friend.fullName


protocol Payable{
    func pay()-> (basePay:Int, benefits:Int, deductions:Int, vacationTime:Int)
}

class Employee{
    let name:String
    let address:String
    let startDate:NSDate
    let type:String
    
    var department:String?
    var reportsT:Employee?
    
    init(fullName:String, employeeAddress:String, employeeStartDate:NSDate, employeeType:String){
        name = fullName
        address = employeeAddress
        startDate = employeeStartDate
        type = employeeType
    }
}

class HourlyEmployee:Employee, Payable{
    let hourlyWage = 12
    let hourWorked = 40
    let availableVacation = 0
    
    func pay() -> (basePay: Int, benefits: Int, deductions: Int, vacationTime: Int) {
        return ( (hourlyWage * hourWorked), 0, 0, availableVacation )
    }
}

class SalariedEmployee:Employee{
    let salary = 40909
}







