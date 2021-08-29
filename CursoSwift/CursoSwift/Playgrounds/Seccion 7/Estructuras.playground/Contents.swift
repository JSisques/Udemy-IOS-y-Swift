import UIKit

struct cuadrados{
    
    var ancho = 10
    var alto = 10
    
    func area(x: Int, y: Int) -> Int{
        return x * y
    }
}

let miCuadrado = cuadrados()
miCuadrado.alto

let areaCuadrado = miCuadrado.area(x: miCuadrado.ancho, y: miCuadrado.alto)
