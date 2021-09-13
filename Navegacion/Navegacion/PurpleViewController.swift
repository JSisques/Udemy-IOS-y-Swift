//
//  PurpleViewController.swift
//  Navegacion
//
//  Created by Javier Plaza Sisqués on 13/9/21.
//

import UIKit

class PurpleViewController: UIViewController {
    
    var selfTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let secureTitle = selfTitle{
            self.title = selfTitle
        }
    }

}
