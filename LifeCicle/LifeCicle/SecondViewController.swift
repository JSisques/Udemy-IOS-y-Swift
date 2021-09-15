//
//  SecondViewController.swift
//  LifeCicle
//
//  Created by Javier Plaza Sisqués on 15/9/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Es llamada solo cuando la vista es creada. Es un buen momento para hacer cambios de UI ya que estas seguro que la vista ya fue cargada en memoria y tienes acceso a todos sus elementos y conexiones. Al ser un metodo que solo se manda a llamar una vez es un bueno lugar para hacer cosas que solo necesitan hacer una vez, por ejemplo iniciar bases de datos o conexiones a servidores */

        
        //El #function simplemente indica en que función estas
        print("Estoy en la VC2 y se activo --> \(#function)")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /*Este metodo siempre se llama antes de que la vista del viewController se muestre en pantalla. Buen lugar para codigo que se requiere llamar cada vez que la vista se va a mostrar en pantalla, a ser potencialmente llamado tantas veces aqui no se recomienda escribir codigo que solo se requiere ejecutar una sola vez. Ejemplo de uso sería usarlo para actualizar elementos de la UI que han cambiado cuando el usuario estaba en otra vista. */
        
        print("Estoy en la VC2 y se activo --> \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /*Este metodo es llamado cuando la vista ya se desplego en pantalla. Al ya estar seguro que dicha vista ya esta en pantalla es buen lugar para iniciar procesos que pueden ser pesados para el CPU y por lo tanto podrian ocasionar problemas al mostrar elementos de tu vista. Ejemplos: Iniciar musica, sonidos, video, animaciones o recolectar datos de un servidor */

        
        print("Estoy en la VC2 y se activo --> \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        /*Este metodo es llamado antes de que la vista sea removida de la pantalla. Su uso no es muy común pero puedes usarla para iniciar limpieza o verificaciones */
        
        print("Estoy en la VC2 y se activo --> \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        /*Este metodo se llama cuando la vista se removida de pantalla. Buen lugar para detener procesos que no se requieran cuando el usuario no ve esa pantalla que fue removida. Ejemplo: Detener musica, llamadas a servidores o a dispositivos externos ligados a esa vista */

        print("Estoy en la VC2 y se activo --> \(#function)")
    }
}
