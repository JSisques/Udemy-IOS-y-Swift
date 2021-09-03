//
//  ViewController.swift
//  EjemploProyecto
//
//  Created by Javier Plaza Sisqués on 3/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = "Ya cambié"
        etiqueta.text = "Ya cambié 2"
        etiqueta.text = "Ya cambié 3"
        etiqueta.text = "Ya cambié 4"
    }
    
    @IBAction func cambiarTexto(_ sender: Any) {
        etiqueta.text = "Acción del botón"
    }
}

