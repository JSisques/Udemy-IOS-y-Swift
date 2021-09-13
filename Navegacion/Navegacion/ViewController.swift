//
//  ViewController.swift
//  Navegacion
//
//  Created by Javier Plaza Sisqués on 13/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOrange(_ sender: Any) {
        performSegue(withIdentifier: "VCOrange", sender: self)
    }
    
    @IBAction func btnPurple(_ sender: Any) {
        performSegue(withIdentifier: "VCPurple", sender: self)
    }
    
    @IBAction func btnGreen(_ sender: Any) {
        performSegue(withIdentifier: "VCGreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VCOrange"{
            
            if let destiny = segue.destination as? OrangeViewController{
                destiny.selfTitle = "Naranja"
            }
            
        } else if segue.identifier == "VCGreen"{
            
            if let destiny = segue.destination as? GreenViewController{
                destiny.selfTitle = "Verde"
            }
            
        } else if segue.identifier == "VCPurple"{
            if let destiny = segue.destination as? PurpleViewController{
                destiny.selfTitle = "Morado"
            }
        }
    }
}

