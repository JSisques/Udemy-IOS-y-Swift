import UIKit

//Switch

var country = "FR"

switch country {
case "ES":
    print("Se habla español")
case "MX":
    print("Se habla español")
case "ARG":
    print("Se habla español")
case "CO":
    print("Se habla español")
case "UK":
    print("Se habla inglés")
case "EEUU":
    print("Se habla inglés")
default:
    print("No conocemos el idioma")
}


var age = 20

switch age {
case 0,1,2:
    print("Eres un bebé")
case 3...10:
    print("Eres un niño")
case 11..<16:
    print("Eres un adolescente")
case 16..<70:
    print("Eres un adulto")
case 70..<100:
    print("Eres un anciano")
default:
    print("😱")
}
