import UIKit

class Automovil{
    
    var color = "neutro"
    var llantas = 4
    var costo = 0
    
    func encender() -> Bool{
        return true
    }
    
    func apagar() -> Bool{
        return true
    }
    
    func acelerar() -> Bool{
        return true
    }
}

let miCoche = Automovil()

miCoche.acelerar()
miCoche.costo
miCoche.color = "Rojo"
