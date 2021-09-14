//
//  ViewController.swift
//  CollectionViews
//
//  Created by Javier Plaza Sisqués on 14/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    private let myCountires = ["España", "Mexico", "Argentina", "Chile", "Brasil", "Italia"]
    //Para sacar la mitad del ancho de la pantalla
    private let myCellWitdh = UIScreen.main.bounds.width / 2
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
       
        myCollectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
    }


}

extension ViewController: UICollectionViewDataSource{
    
    //Para indicar el numero de secciones
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    //Para indicar el numero de elementos
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCountires.count
    }
    
    //Para el valor de las celdas
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell
        
        cell?.myFirstLabel.text = myCountires[indexPath.row]
        
        return cell!
    }
    
    
}

extension ViewController: UICollectionViewDelegate{
    
    //Para detectar eventos al seleccionar
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) --> \(indexPath.row) \(myCountires[indexPath.row])")
    }
}

//Para la organizacion de las celdas
extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: myCellWitdh, height: myCellWitdh)
    }
}
