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
        
        //Para eliminar las celdas vacias que genera debajo
        myTableView.tableFooterView = UIView()
    }


}

extension ViewController: UITableViewDataSource{
    
    //Para indicar cuantas celdas tendrá nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCountries.count
    }
    
    //Para definir el contenido de cada una de las celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Para poder reutilizar las celdas, hacer siempre
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        //Si la celda no existe la creamos
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell?.backgroundColor = .gray
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
        }
        
        cell!.textLabel?.text = myCountries[indexPath.row]
        
        return cell!
    }
    
    
}
