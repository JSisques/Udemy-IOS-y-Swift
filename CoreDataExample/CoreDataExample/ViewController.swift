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
        //Crear alerta
        let alert = UIAlertController(title: "Agregar pais", message: "Añade un país nuevo", preferredStyle: .alert)
        
        //Creamos un textfield en el alert
        alert.addTextField(configurationHandler: nil    )
        
        //Crear y configurar el botoón de alerta
        let btnAlerta = UIAlertAction(title: "Añadir", style: .default){ action in
            //Recuperamos el text field de la alerta
            let textField = alert.textFields![0]
            
            //Crear objeto pais
            let pais = Pais(context: self.context)
            pais.nombre = textField.text
            
            //Guardar info
            do{
                try self.context.save()
            } catch{
                print("Error guardando los datos")
            }
            
            
            //Refrescar info
            self.recuperarDatos()
            
        }
        
        //Añadir boton a la alerta y mostrar alerta
        alert.addAction(btnAlerta)
        self.present(alert, animated: true, completion: nil)
    
    }
    
    private func recuperarDatos(){
        do {
            self.myCountries = try context.fetch(Pais.fetchRequest())
            
            //Para actualizar los datos de manera asincrona
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
            
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
    
    //6. - Función para eliminar haciendo swipe
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //Crear acción de eliminar
        let accionEliminar = UIContextualAction(style: .destructive, title: "Eliminar"){ (action,view, completionHandler) in
            //Que pais se eliminara?
            let paisEliminar = self.myCountries![indexPath.row]
            
            //Eliminar pais
            self.context.delete(paisEliminar)
            
            //Guardar cambios
            do{
                try self.context.save()
            } catch{
                print("Error guardando los datos")
            }
            
            //Recargar los datos
            self.recuperarDatos()
        }
        
        return UISwipeActionsConfiguration(actions: [accionEliminar])
    }
    
}
