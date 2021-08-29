import UIKit

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Javi"
let myWrongIntNumber: Int? = Int(myWrongStringNumber)

var myOptionalString: String?
print(myOptionalString)

myOptionalString = "Hola a todos"

if myOptionalString != nil  {
    print("La variable no es nula")
} else{
    print("La variable es nula")
}
