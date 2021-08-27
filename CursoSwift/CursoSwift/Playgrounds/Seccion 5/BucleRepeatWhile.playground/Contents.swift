import UIKit

var numeros = [0,1,2,3,4,5,6,7,8,9]

repeat{
    
    numeros.removeFirst()
    print("La variable numeros tiene \(numeros.count) elementos")
    
} while (!numeros.isEmpty)

var numAleatorio: Int
var n = 0

repeat{
    
    n += 1
    numAleatorio = Int(arc4random_uniform(100))
    print("El ciclo lleva \(n) iteraciones y el numero aleatorio es \(numAleatorio)")
    
} while(numAleatorio != 8)

