//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Javier Plaza Sisqués on 20/9/21.
//

import UIKit
// 1. - Referenciar libreria de CoreData
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // 2. - Referencia al Manager Object Context
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // 3. - Cambiar a variable de tipo pais sin datos iniciales
    var myCountries: [Pais]?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
        // 4. - Recuperar datos
        recuperarDatos()
        
    }

    @IBAction func addAction(_ sender: Any) {
    
    }
    
    private func recuperarDatos(){
        do {
            self.myCountries = try context.fetch(Pais.fetchRequest())
            tableView.reloadData()
        } catch {
            print("Error recuperando datos")
        }
    }
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = myCountries![indexPath.row].nombre
        
        return cell!
    }
    
    
    
    //Para indicar cuantas celdas tendrá nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let countries = myCountries{
            return countries.count
        }
        return 0
    }
    
    //Indica el numero de secciones que tiene la tabla
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myCountries![indexPath.row].nombre)
    }
    
}
