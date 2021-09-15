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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch carType! {
        case 0:
            print("Tipo de automovil 0")
        case 1:
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
    
}
