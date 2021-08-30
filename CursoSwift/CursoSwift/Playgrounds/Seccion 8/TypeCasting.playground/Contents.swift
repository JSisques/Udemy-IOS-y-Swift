import UIKit

let myString = "Javi"
let myInt = 22

class MyClass{
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Javi Plaza"
myClass.age = 22

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray{
    
    //Type casting
    if item is String{
        
        //Downcasting
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
        
    } else if item is Int{
        
        let myItemInt = item as! Int
        print("Item es de tipo String y tiene el valor \(myItemInt)")
        
    } else if item is MyClass{
        
        let myItemClass = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor \(myItemClass.name!) y \(myItemClass.age!)")
        
    }
}

//Forma rápida
for item in myArray{
    
    if let myItemString = item as? String{
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int{
        print("Item es de tipo String y tiene el valor \(myItemInt)")
    } else if let myItemClass = item as? MyClass{
        print("Item es de tipo MyClass y tiene el valor \(myItemClass.name!) y \(myItemClass.age!)")
    }
    
}
