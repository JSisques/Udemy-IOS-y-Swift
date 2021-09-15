//
//  ViewController.swift
//  CarFactory
//
//  Created by Javier Plaza Sisqués on 14/9/21.
//

import UIKit

class ViewController: UIViewController {

    var carType: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func basicCarButton(_ sender: Any) {
        carType = 0
        performSegue(withIdentifier: "segueSecondScreen", sender: self)
    }
    
    @IBAction func mazdaCarButton(_ sender: Any) {
        carType = 1
        performSegue(withIdentifier: "segueSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destiny = segue.destination as? CarViewController{
            destiny.carType = self.carType
        }
    }
}

