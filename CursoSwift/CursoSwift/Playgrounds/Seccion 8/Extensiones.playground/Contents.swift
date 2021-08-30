import UIKit

let myMeters: Double = 5000

func metersToKm(meters: Double) -> Double {
    return meters / 1000
}

print(metersToKm(meters: myMeters))

//Con las extensiones añadimos más funcionalidades a una propia clase
extension Double{
    
    var km: Double{
        return self / 1000
    }
    
    var m: Double{
        return self
    }
    
    var cm: Double{
        return self * 1000
    }
}

print(myMeters.km)
