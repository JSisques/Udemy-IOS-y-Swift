//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Javier Plaza Sisqués on 5/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
}

