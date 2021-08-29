import UIKit

var numeroAleatorio: Int = Int(arc4random_uniform(100))

func holaMundo(){
    print("Hola mundo!")
}

holaMundo()

func sumarDosNumerosCualquiera(){
    
    let num = 2+2
    print(num)
}

sumarDosNumerosCualquiera()


func cuadradoDeNumero(x: Int){
    
    let numCuadrado = x * x
    print("El cuadrado de \(x) es \(numCuadrado)")
}

cuadradoDeNumero(x: numeroAleatorio)
