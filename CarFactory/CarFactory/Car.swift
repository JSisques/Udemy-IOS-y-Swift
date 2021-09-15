//
//  Car.swift
//  CarFactory
//
//  Created by Javier Plaza Sisqués on 15/9/21.
//

import Foundation
import UIKit

class Car{
    
    var color: UIColor?
    let wheelNumber = 3
    var price: Double?
    
    func startEngine() -> Bool{
        return true
    }
    
    func stopEngine() -> Bool{
        return false
    }
    
    func acelerate() -> String {
        return "I´m acelerating"
    }
    
}
