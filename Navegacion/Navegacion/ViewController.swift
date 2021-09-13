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
}

