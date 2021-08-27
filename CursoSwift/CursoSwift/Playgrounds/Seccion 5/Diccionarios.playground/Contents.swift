import UIKit

let myClassicDictionary = Dictionary<Int, String>()
var myModernDictionary = [Int:String]()

//Inicializar el diccionario
myModernDictionary = [001: "Javi", 002: "Ana"]

//Añadir datos
myModernDictionary[003] = "Paco"

//Obtener datos
myModernDictionary[002]

//Borrar datos
myModernDictionary[002] = nil
myModernDictionary.removeValue(forKey: 003) //Manera clásica
