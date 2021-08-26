import UIKit

let name1 = "Javi"
let name2 = "Ana"
let name3 = "Javi"

//Comparación
name1 == name2
name1 == name3

//Contenido
let myContent = "Mi nombre es Javi"
myContent.contains(name1)

//Vacia
let myEmptyString = ""
myEmptyString.isEmpty

//Recorrido
for valor in myContent{
    print(valor)
}
