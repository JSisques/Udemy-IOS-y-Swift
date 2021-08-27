import UIKit

var arrayNumeros = [1,2,3]
let arrayNumerosInmutable = [3,2,1]

arrayNumeros.append(5)
arrayNumeros.insert(4, at: 3)

print(arrayNumeros)
print(arrayNumeros[1])

arrayNumeros.removeLast()

print(arrayNumeros)

arrayNumeros.remove(at: 3)

print(arrayNumeros)

arrayNumeros.removeAll()

print(arrayNumeros)

var arrayVacio: [Int] = []

print(arrayVacio)
