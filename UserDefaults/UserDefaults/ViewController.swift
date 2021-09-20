//
//  ViewController.swift
//  UserDefaults
//
//  Created by Javier Plaza Sisqués on 20/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let myKey = "MY_KEY"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Recuperar preferencias
    @IBAction func getButtonAction(_ sender: Any) {
        if let value = UserDefaults.standard.string(forKey: myKey){
            showAlert(text: value)
        } else{
            showAlert(text: "No hay un valor para esta clave")
        }
    }
    
    //Guardar preferencias
    @IBAction func putButtonAction(_ sender: Any) {
        UserDefaults.standard.setValue("Prueba", forKey: myKey)
        //Para forzar guardar los datos
        UserDefaults.standard.synchronize()
        showAlert(text: "Hemos guardado un valor")
    }
    
    //Borrar preferencias
    @IBAction func deleteButtonAction(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: myKey)
        UserDefaults.standard.synchronize()
        showAlert(text: "Hemos borrado un valor")
    }
    
    //Creamos un alert
    private func showAlert(text: String){
        let alert = UIAlertController(title: "My UserDefaults", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

