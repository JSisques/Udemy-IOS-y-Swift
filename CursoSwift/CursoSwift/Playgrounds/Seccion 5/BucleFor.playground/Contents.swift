import UIKit

var contador = 0

for i in 1...4{
    print(i)
}

var paises = ["España", "Canadá", "Ecuador", "Bolivia", "Francia"]

for pais in paises{
    print(pais)
}


var paisesDict = ["ES":"España", "CA":"Canadá", "EC":"Ecuador", "BO":"Bolivia", "FR":"Francia"]

for (key, value) in paisesDict{
    print("\(key) pertenece a \(value)")
}
