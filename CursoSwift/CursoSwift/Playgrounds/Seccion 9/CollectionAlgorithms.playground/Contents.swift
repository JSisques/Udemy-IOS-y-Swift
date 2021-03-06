import UIKit

var myArray = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
var myDictionary = [5: "Cinco", 8: "Ocho", 1: "Uno", 0: "Cero", 3: "Tres", 9: "Nueve", 7: "Siete", 2: "Dos", 4: "Cuatro", 6: "Seis"]
var mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

/*
//Sort
print(myArray)
myArray.sort()
print(myArray)

myArray.sort{ (intA, intB) -> Bool in
    return intA > intB
}

//myDictionary.sort()
//mySet.sort
*/

//Sorted
print(myArray)
var myArraySorted = myArray.sorted() //Ordena y retorna una nueva sin modificar la original
print(myArray)
print(myArraySorted)

myArraySorted = myArray.sorted{ (intA, intB) -> Bool in
    return intA > intB
}

let mySortedDictionary = myDictionary.sorted{ (elementA, elementB) -> Bool in
    return elementA > elementB
}
print(mySortedDictionary)

var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted{ (intA, intB) -> Bool in
    return intA > intB
}
print(mySortedSet)
