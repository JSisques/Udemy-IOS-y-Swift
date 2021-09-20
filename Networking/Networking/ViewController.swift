//
//  ViewController.swift
//  Networking
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var btnDownload: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblName.text = ""
        lblEmail.text = ""
        lblId.text = ""
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
        
    }
    @IBAction func getUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.getUser(id: 8) { (user) in
            
            self.activityIndicator.stopAnimating()
            self.setupUser(user: user)
            
        } failure: { (error) in
            self.activityIndicator.stopAnimating()
            self.lblName.text = error.debugDescription
        }
    }
    
    @IBAction func postUserAction(_ sender: Any) {
        
        let newUser = NewUser(name: "Javi", email: "Javi@mail.com", genere: "Male", status: "Active")
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.addUser(user: newUser) { (user) in
            
            self.activityIndicator.stopAnimating()
            self.setupUser(user: user)
            
        } failure: { (error) in
            self.activityIndicator.stopAnimating()
            self.lblName.text = error.debugDescription
        }
        
    }
    @IBAction func putUser(_ sender: Any) {
        
        let newUser = NewUser(name: "Javi 2", email: nil, genere: nil, status: nil)
        
        activityIndicator.startAnimating()
        
        NetworkingProvider.shared.updateUser(id: 8,user: newUser) { (user) in
            
            self.activityIndicator.stopAnimating()
            
            self.setupUser(user: user)
            
        } failure: { (error) in
            self.activityIndicator.stopAnimating()
            self.lblName.text = error.debugDescription
        }
    }
    @IBAction func deleteUserAction(_ sender: Any) {
        
        activityIndicator.startAnimating()
        
        let id = 8
        
        NetworkingProvider.shared.deleteUser(id: id){
                
            self.activityIndicator.stopAnimating()
            self.lblName.text = "Se ha borrado el user \(id)"
            self.lblEmail.text = ""
            self.lblId.text = ""
            
        } failure: { error in
            self.activityIndicator.stopAnimating()
            self.lblName.text = error.debugDescription
        }
    }
    
    private func setupUser(user: User){
        self.lblName.text = user.name
        self.lblEmail.text = user.email
        //Usamos description para transformar el entero a un String
        self.lblId.text = user.id?.description
    }
    
    @IBAction func downloadImage(_ sender: Any) {
        btnDownload.isHidden = true
        
        image.kf.setImage(with: URL(string: "https://www.apple.com/v/swift/c/images/overview/icon_swift_hero_large.png"))
    }
    
}

