import UIKit

//Protocolos
protocol PersonProtocol{
    
    //Con get se puede leer y con set se puede escribir
    var name: String{get set}
    var age: Int{get set}
    
    func fullName() -> String
}

struct Programmer: PersonProtocol{
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y su lenguaje favorito es \(language)"
    }
    
    var name: String
    
    var age: Int
    
    var language: String
}

struct Teacher: PersonProtocol{
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) e imparte \(subject)"
    }
    
    var name: String
    
    var age: Int
    
    var subject: String
}

let myProgrammer = Programmer(name: "Javi", age: 22, language: "Swift")
let myTeacher = Teacher(name: "Pepe", age:  40, subject: "Matemáticas")

myProgrammer.fullName()
myTeacher.fullName()


class FirstClass: SecondClassProtocol{
    func call() {
        print("Estoy de vuelta")
    }
    
    func callSecond(){
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
}

protocol SecondClassProtocol{
    func call()
}

class SecondClass{
    
    var delegate: SecondClassProtocol?
    
    func callFirst(){
        sleep(5)
        delegate?.call()
    }
    
}

let firstClass = FirstClass()
firstClass.callSecond()
