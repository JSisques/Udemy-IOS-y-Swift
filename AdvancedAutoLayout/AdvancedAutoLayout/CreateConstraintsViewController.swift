//
//  CreateConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Javier Plaza Sisqués on 15/9/21.
//

import UIKit

class CreateConstraintsViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Constraints de tamaño
        orangeView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        orangeView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        view .addConstraint(NSLayoutConstraint(item: orangeView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1000, constant: 16))
        
        orangeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)
        
    }
    

}
