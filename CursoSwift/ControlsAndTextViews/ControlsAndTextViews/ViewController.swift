//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Javier Plaza Sisqués on 4/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.setTitle("Mi botón", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
    }
    
    //Actions
    @IBAction func myButtonAction(_ sender: Any) {
        if myButton.backgroundColor == .blue{
            myButton.backgroundColor = .green
        } else{
            myButton.backgroundColor = .blue
        }
    }
    
}

