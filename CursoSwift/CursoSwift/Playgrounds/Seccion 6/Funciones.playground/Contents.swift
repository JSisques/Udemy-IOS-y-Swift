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
    
    for _ in 0...2{
        resultado *= num
    }
    
    return resultado
}

print(cuboDe(num: numeroAleatorio))


func saludar(nombre: String, mensaje: String = "te saludo"){
    
    print("Hola \(nombre), \(mensaje)")
}

saludar(nombre: "Javi")

func listaNombres() -> [String]{
    
    let arrayNombres = ["Jose", "Maria", "Morelos"]
    return arrayNombres
}

var nombres = listaNombres()

//Nombre de parametros internos y externos
func calificacionPromedio(matematicas materiaUno: Double, fisica materiaDos: Double, algebra materiaTres: Double) -> Double{
    return(materiaUno + materiaDos + materiaTres) / 3
}

//let promedio = calificacionPromedio(materiaUno: 81, materiaDos: 60, materiaTres: 45)
let promedio = calificacionPromedio(matematicas: 81, fisica: 60, algebra: 45)


//Closures (Bloque autocontenido de codigo que se puede asignar a una variable)
let miClosure = {
(materiaUno: Double, materiaDos: Double, materiaTres: Double) -> Double in
    return(materiaUno + materiaDos + materiaTres) / 3
}

print("Mi calificacion promedio fue de \(miClosure(100, 22, 88))")

