//
//  GreenViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Javier Plaza Sisqués on 13/9/21.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.isHidden = true
        
        mySearchBar.delegate = self
    }

}

extension GreenViewController: UISearchBarDelegate{
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //Cerramos el teclado
        mySearchBar.resignFirstResponder()
        
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
    }
}
