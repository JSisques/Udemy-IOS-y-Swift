import UIKit

//Sintaxis enumeración
enum PersonalData{
    case name
    case surname
    case address
    case phone
}

var currentData: PersonalData = .name
var input = "Javi"

currentData = .phone
input="7543524"

//Enumeraciones con valores asociados
enum ComplexPersonalData{
    case name (String)
    case surname (String, String)
    case address (String, Int)
    case phone (Int)
}

var complexCurrentData: ComplexPersonalData = .name("Javi")
complexCurrentData = .address("Calle", 5)
