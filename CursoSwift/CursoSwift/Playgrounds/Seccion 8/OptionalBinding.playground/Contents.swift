import UIKit

var myOptionalString: String?
myOptionalString = "Javi"
//Para detectar si una variable opcional contiene un valor no nulo
//Se ejecutará cuando sea distinto de nulo
if let myString = myOptionalString{
   print(myString)
}else{
    print(myOptionalString)
}

//Desempaquetado forzado
print(myOptionalString!)
