//
//  ModifyConstraintsViewController.swift
//  AdvancedAutoLayout
//
//  Created by Javier Plaza Sisqués on 15/9/21.
//

import UIKit

class ModifyConstraintsViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightConstraint.constant = 300
        topConstraint.constant = 48
    
    }

}
