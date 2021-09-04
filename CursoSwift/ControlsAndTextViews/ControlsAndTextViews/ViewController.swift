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
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var mySwitchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
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
        myPickerView.isHidden = true
        
        //Page control
        myPageControl.numberOfPages = myPickerViewValues.count
        myPageControl.currentPageIndicatorTintColor = .blue
        myPageControl.pageIndicatorTintColor = .lightGray
        
        //Segmented Control
        //Quitamos los segmentos predeterminados
        mySegmentedControl.removeAllSegments()
        for (index, value) in myPickerViewValues.enumerated(){
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        //Slider
        mySlider.minimumTrackTintColor = .red
        mySlider.minimumValue = 1
        mySlider.maximumValue = Float(myPickerViewValues.count)
        
        //Stepper
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerViewValues.count)
        
        //Switch
        mySwitch.onTintColor = .blue
        mySwitch.isOn = false
        
        //Progress Indicator
        myProgressView.progress = 0
        
        
        //Activity Indicator
        myActivityIndicator.startAnimating()
        myActivityIndicator.color = .orange
        myActivityIndicator.hidesWhenStopped = true
        
        //Labels
        mySwitchLabel.textColor = .darkGray
        mySwitchLabel.font = UIFont.boldSystemFont(ofSize: 16)
        mySwitchLabel.text = "Está apagado"
        
        //Text Field
        //myTextField.textColor = .brown
        //myTextField.placeholder = "Escribe algo..."
        //myTextField.delegate = self
        
        //Text View
        myTextView.textColor = .darkGray
        myTextView.delegate = self
    }
    
    //Actions
    @IBAction func myButtonAction(_ sender: Any) {
        if myButton.backgroundColor == .blue{
            myButton.backgroundColor = .green
        } else{
            myButton.backgroundColor = .blue
        }
        
        myTextView.resignFirstResponder()
    }
    
    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 0, animated: true)
        let myString = myPickerViewValues[myPageControl.currentPage]
        myButton.setTitle(myString, for: .normal)
        mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
        mySlider.value = Float(myPageControl.currentPage)
    }
    
    @IBAction func mySegmentedControlAction(_ sender: Any) {
        myPickerView.selectRow(mySegmentedControl.selectedSegmentIndex, inComponent: 0, animated: true)
        myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
        let myString = myPickerViewValues[mySegmentedControl.selectedSegmentIndex]
        myButton.setTitle(myString, for: .normal)
        mySlider.value = Float(mySegmentedControl.selectedSegmentIndex)
    }
    
    @IBAction func mySliderAction(_ sender: Any) {
        var myString = ""
        
        var progress: Float = 0
        
        switch mySlider.value{
        case 1..<2:
            myPageControl.currentPage = 0
            myPickerView.selectRow(0, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 0
            myString = myPickerViewValues[0]
            progress = 0.2
        case 2..<3:
            myPageControl.currentPage = 1
            myPickerView.selectRow(1, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 1
            myString = myPickerViewValues[1]
            progress = 0.4
        case 3..<4:
            myPageControl.currentPage = 2
            myString = myPickerViewValues[2]
            myPickerView.selectRow(2, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 2
            progress = 0.6
        case 4..<5:
            myPageControl.currentPage = 3
            myString = myPickerViewValues[3]
            myPickerView.selectRow(3, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 3
            progress = 0.8
        default:
            myPageControl.currentPage = 4
            myString = myPickerViewValues[4]
            myPickerView.selectRow(4, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 4
            progress = 1
        }
        
        myButton.setTitle(myString, for: .normal)
        myProgressView.progress = progress
    }
    
    @IBAction func myStepperAction(_ sender: Any) {
        let value = myStepper.value
        var myString = ""
        
        mySlider.value = 0
        
        switch value{
        case 1..<2:
            myPageControl.currentPage = 0
            myPickerView.selectRow(0, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 0
            myString = myPickerViewValues[0]
            mySlider.value = 0
        case 2..<3:
            myPageControl.currentPage = 1
            myPickerView.selectRow(1, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 1
            myString = myPickerViewValues[1]
            mySlider.value = 1
        case 3..<4:
            myPageControl.currentPage = 2
            myString = myPickerViewValues[2]
            myPickerView.selectRow(2, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 2
            mySlider.value = 2
        case 4..<5:
            myPageControl.currentPage = 3
            myString = myPickerViewValues[3]
            myPickerView.selectRow(3, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 3
            mySlider.value = 3
        default:
            myPageControl.currentPage = 4
            myString = myPickerViewValues[4]
            myPickerView.selectRow(4, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 4
            mySlider.value = 4
        }
        
        myButton.setTitle(myString, for: .normal)
    }
    
    @IBAction func mySwitchAction(_ sender: Any) {
        if mySwitch.isOn {
            //Si el picker view esta oculto
            myPickerView.isHidden = false
            myActivityIndicator.stopAnimating()
            mySwitchLabel.text = "Está encendido"
        } else {
            myPickerView.isHidden = true
            myActivityIndicator.startAnimating()
            mySwitchLabel.text = "Está apagado"
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
        
        myPageControl.currentPage = row
        
        mySegmentedControl.selectedSegmentIndex = row
    }
    
    
}

extension ViewController: UITextFieldDelegate{
    
    //Función para cerrar el teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
}

extension ViewController: UITextViewDelegate{
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        //myTextField.isHidden = true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        //myTextField.isHidden = false
    }
}
