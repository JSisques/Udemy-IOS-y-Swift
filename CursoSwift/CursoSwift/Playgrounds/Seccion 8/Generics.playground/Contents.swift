import UIKit

//Sin genéricos
func swapTwoInts(a: inout Int, b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var int1 = 5
var int2 = 10

print("El primer valor es \(int1) y el segundo valor es \(int2)")

swapTwoInts(a: &int1, b: &int2)

print("El primer valor es \(int1) y el segundo valor es \(int2)")

//Con genéricos
func swapTwoGenerics<T>(a: inout T, b: inout T){
    let tempA = a
    a = b
    b = tempA
}

var generic1 = "Javi"
var generic2 = "Plaza"

print("El primer valor es \(generic1) y el segundo valor es \(generic2)")

swapTwoGenerics(a: &generic1, b: &generic2)

print("El primer valor es \(generic1) y el segundo valor es \(generic2)")
