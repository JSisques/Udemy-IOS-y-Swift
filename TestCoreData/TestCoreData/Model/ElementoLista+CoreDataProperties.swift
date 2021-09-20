//
//  ElementoLista+CoreDataProperties.swift
//  TestCoreData
//
//  Created by Javier Plaza Sisqués on 20/9/21.
//
//

import Foundation
import CoreData


extension ElementoLista {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ElementoLista> {
        return NSFetchRequest<ElementoLista>(entityName: "ElementoLista")
    }

    @NSManaged public var nombre: String?

}

extension ElementoLista : Identifiable {

}
