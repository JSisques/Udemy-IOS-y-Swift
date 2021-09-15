//
//  CarViewController.swift
//  CarFactory
//
//  Created by Javier Plaza Sisqués on 15/9/21.
//

import UIKit

class CarViewController: UIViewController {

    @IBOutlet weak var lblInfo: UILabel!
    
    var carType: Int?
    var car: Car?
    var electricCar: ElectricCar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch carType! {
        case 0:
            car = Car()
            car?.color = UIColor.black
            car?.price = 8000.99
            print("Tipo de automovil 0")
        case 1:
            electricCar = ElectricCar()
            electricCar?.color = UIColor.red
            electricCar?.price = 10000.95
            electricCar?.batery = 67
            print("Tipo de automovil 1")
        default:
            print("Error")
        }
       
    }

    @IBAction func startEngineButton(_ sender: Any) {
    }
    
    @IBAction func stopEngineButton(_ sender: Any) {
    }
    
    @IBAction func acelerateButton(_ sender: Any) {
    }
    
    @IBAction func showInfoButton(_ sender: Any) {
        if carType == 0{
            lblInfo.text = "\(car!.color!.description) \(car!.price) "
            
        } else{
            lblInfo.text = "\(electricCar!.color!.description) \(electricCar!.price) \(electricCar!.batery) "
        }
    }
    
}
