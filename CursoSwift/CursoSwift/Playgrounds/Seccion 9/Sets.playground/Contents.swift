import UIKit

var mySet = Set<String>()
var mySet2: Set<String> = ["Javi", "Plaza", "22"]

//Insertar valores de uno en uno
mySet.insert("Javi")
mySet.insert("Plaza")
mySet.insert("22")
mySet.insert("Javi")
print(mySet)

//Acceso
if mySet.contains("Javier"){
    print("Existe")
} else{
    print("No xiste")
}

//Modificacion
mySet.remove("22")
print(mySet)

//Modificación y acceso por índice

if let index = mySet.firstIndex(of: "Javi"){
    mySet.remove(at: index)
}

mySet.insert("Javi")
mySet.insert("Plaza")
mySet.insert("22")
mySet.insert("Bienvenidos al curso de Swift")

print(mySet)

//Iteración
for item in mySet{
    print(item)
}

//Operaciones de conjuntos
let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// - Intersección
print(myIntSet.intersection(myIntSet2))

// - Diferencia simétrica
print(myIntSet.symmetricDifference(myIntSet2))

// - Unión
print(myIntSet.union(myIntSet2))

// - Sustracción
print(myIntSet.subtracting(myIntSet2))
