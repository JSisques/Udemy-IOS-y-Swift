import UIKit

//Manejo de errores

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int{
    
    if firstNumber == nil{
        
        throw SumError.firstNumberNil
        
    } else if secondNumber == nil {
        
        throw SumError.secondNumberNil
        
    } else if firstNumber! < 0 || secondNumber! < 0{
        
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    return firstNumber! + secondNumber!
}


//Definicion tipos de errores

enum SumError: Error{
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}


//Propagacion de errores
do{
    
print(try sum(firstNumber: -5, secondNumber: 50))

} catch SumError.firstNumberNil{
    print("Error, primer numero nulo")
} catch SumError.secondNumberNil{
    print("Error, segundo numero nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber){
    print("Error, algun numero negativo, \(firstNumber), \(secondNumber)")
}
