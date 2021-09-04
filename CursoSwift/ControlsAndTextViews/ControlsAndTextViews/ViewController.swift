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
    @IBOutlet weak var myPickerView: UIPickerView!
    
    //Variables
    private let myPickerViewValues = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Buttons
        myButton.setTitle("Mi botón", for: .normal)
        myButton.backgroundColor = .blue
        myButton.setTitleColor(.white, for: .normal)
        
        //Pickers
        myPickerView.backgroundColor = .lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
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

//El protocolo DataSource sirve para cargar los datos y el Delegate para interactuar con nuestro picker

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    //Función para devolver el numero de componentes (columnas)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //Queremos que solo tenga 1 columna
        return 1
    }
    
    //Numero de filas del Picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerViewValues.count
    }
    
    //Representacion visual de los elementos
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerViewValues[row]
    }
    
    //Esta operacion se invoca cada vez que tengamos una fila seleccionada
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myString = myPickerViewValues[row]
        myButton.setTitle(myString, for: .normal)
    }
    
    
}
