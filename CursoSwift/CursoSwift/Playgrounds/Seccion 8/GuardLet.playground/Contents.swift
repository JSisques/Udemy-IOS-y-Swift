import UIKit

var myOptionalString: String?

func myFunction(){
    guard let myString = myOptionalString else{
        return
    }
    
    print("El valor de myString es \(myString)")
}

myFunction()

myOptionalString = "Hola, que tal?"

myFunction()
