import UIKit

var array = [0,1,2,3,4,5,6,7,8,9]

//Operador rango lado doble

var subsetArray = array[1...3]

//Operador rango lado unico

var subsetArray2 = array[...3]
var subsetArray3 = array[5...]

//Rango cerrado

var rangoCerrado = [1...5]
Array(rangoCerrado[0])[2]

var subArray = Array(rangoCerrado[0])
subArray[2]
