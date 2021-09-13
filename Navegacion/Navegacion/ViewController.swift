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
        goTo(id: "VCOrange")
    }
    
    @IBAction func btnPurple(_ sender: Any) {
        goTo(id: "VCPurple")
    }
    
    @IBAction func btnGreen(_ sender: Any) {
        goTo(id: "VCGreen")
    }
    
    private func goTo(id: String){
        performSegue(withIdentifier: id, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VCOrange"{
            
            if let destiny = segue.destination as? PurpleViewController{
                destiny.selfTitle = "Naranja"
                destiny.color = .orange}
            
        } else if segue.identifier == "VCGreen"{
            
            if let destiny = segue.destination as? PurpleViewController{
                destiny.selfTitle = "Verde"
                destiny.color = .green}
            }else if segue.identifier == "VCPurple"{
                if let destiny = segue.destination as? PurpleViewController{
                    destiny.selfTitle = "Morado"
                    destiny.color = .purple}
        }
    }
}

