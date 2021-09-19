//
//  ViewController.swift
//  Networking
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblName.text = ""
        lblEmail.text = ""
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
        
    }
    @IBAction func getUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.getUser(id: 8) { (user) in
            
            self.activityIndicator.stopAnimating()
            self.lblName.text = user.name
            self.lblEmail.text = user.email
            
        } failure: { (error) in
            self.activityIndicator.stopAnimating()
            self.lblName.text = error.debugDescription
        }
    }
}

