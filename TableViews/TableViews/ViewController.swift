//
//  ViewController.swift
//  TableViews
//
//  Created by Javier Plaza Sisqués on 14/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    private let myCountries = ["España", "Argentina", "Chile", "Francia", "Brasil", "Italia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        //Para eliminar las celdas vacias que genera debajo
        myTableView.tableFooterView = UIView()
        
        //Añadimos la celda custom
        myTableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }


}

extension ViewController: UITableViewDataSource{
    
    //Para indicar cuantas celdas tendrá nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    //Indica el numero de secciones que tiene la tabla
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //Para modificar la altura de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 50
        }
        
        return UITableView.automaticDimension
        
    }
    
    //Para definir el contenido de cada una de las celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Si estamos en la seccion 1
        if indexPath.section == 0{
            //Para poder reutilizar las celdas, hacer siempre
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            
            //Si la celda no existe la creamos
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
                cell?.backgroundColor = .gray
                cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
                
                //Para que salga el hover
                cell?.accessoryType = .disclosureIndicator
            }
            
            cell!.textLabel?.text = myCountries[indexPath.row]
            return cell!
        } else{
            
            //Para pintar la celda custom por primera vez
            var cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
            
            if indexPath.row == 2{
                cell?.myLabel2.text = "saffdqrfwrfg wgrgwergwgghty jyrhsdafs wegrwrgw gwrgwegw grwgwgwg"
            }
            
            cell?.myLabel.text = String(indexPath.row + 1)
            
            return cell!
        }
        
        
        
        
    }
    
    
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myCountries[indexPath.row])
    }
    
}
