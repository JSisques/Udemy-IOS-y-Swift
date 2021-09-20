//
//  Pais+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Javier Plaza Sisqués on 20/9/21.
//
//

import Foundation
import CoreData


extension Pais {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pais> {
        return NSFetchRequest<Pais>(entityName: "Pais")
    }

    @NSManaged public var nombre: String?

}

extension Pais : Identifiable {

}
