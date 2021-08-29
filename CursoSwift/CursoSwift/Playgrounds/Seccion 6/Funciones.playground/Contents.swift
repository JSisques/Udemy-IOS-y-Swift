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


func cuboDe(num: Int) -> Int{
    
    var resultado = 1
    
    for i in 0...2{
        resultado *= num
    }
    
    return resultado
}

print(cuboDe(num: numeroAleatorio))


func saludar(nombre: String, mensaje: String = "te saludo"){
    
    print("Hola \(nombre), \(mensaje)")
}

saludar(nombre: "Javi")
