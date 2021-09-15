//
//  ElectricCar.swift
//  CarFactory
//
//  Created by Javier Plaza Sisqués on 15/9/21.
//

import Foundation


class ElectricCar: Car {
    
    var batery: Int?
    
    func loadBattery() -> String{
        batery = 100
        return "Battery charged"
    }
    
    override func startEngine() -> Bool {
        batery? -= 25
        return true
    }
}
