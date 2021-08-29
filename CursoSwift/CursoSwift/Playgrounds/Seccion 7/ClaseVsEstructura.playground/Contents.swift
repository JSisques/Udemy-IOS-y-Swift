import UIKit

class ClaseAutomovil{
    
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

var miCocheClase = ClaseAutomovil()

miCocheClase.acelerar()
miCocheClase.costo = 5000
miCocheClase.color = "Rojo"


struct EstructuraAutomovil{
    
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

var miCocheEstructura = EstructuraAutomovil()

miCocheEstructura.acelerar()
miCocheEstructura.costo = 5000
miCocheEstructura.color = "Rojo"

var miCocheEstructura2 = miCocheEstructura
miCocheEstructura2.costo = 6000

miCocheEstructura.costo
miCocheEstructura2.costo

var miCocheClase2 = miCocheClase
miCocheClase2.costo = 6000

miCocheClase.costo
miCocheClase2.costo
