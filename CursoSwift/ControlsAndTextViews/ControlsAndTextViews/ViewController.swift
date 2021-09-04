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
        mySlider.minimumValue = 0
        mySlider.maximumValue = Float(myPickerViewValues.count)
        
    }
    
    //Actions
    @IBAction func myButtonAction(_ sender: Any) {
        if myButton.backgroundColor == .blue{
            myButton.backgroundColor = .green
        } else{
            myButton.backgroundColor = .blue
        }
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
        myPageControl.currentPage = Int(mySlider.value)
        
        switch mySlider.value{
        case 1..<2:
            myPageControl.currentPage = 0
            myPickerView.selectRow(0, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 0
            myString = myPickerViewValues[0]
        case 2..<3:
            myPageControl.currentPage = 1
            myPickerView.selectRow(1, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 1
            myString = myPickerViewValues[1]
        case 3..<4:
            myPageControl.currentPage = 2
            myString = myPickerViewValues[2]
            myPickerView.selectRow(2, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 2
        case 4..<5:
            myPageControl.currentPage = 3
            myString = myPickerViewValues[3]
            myPickerView.selectRow(3, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 3
        default:
            myPageControl.currentPage = 4
            myString = myPickerViewValues[4]
            myPickerView.selectRow(4, inComponent: 0, animated: true)
            mySegmentedControl.selectedSegmentIndex = 4
            
        }
        
        myButton.setTitle(myString, for: .normal)
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
