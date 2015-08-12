//: Playground - noun: a place where people can play

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
