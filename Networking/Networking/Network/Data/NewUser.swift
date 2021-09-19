//
//  NewUser.swift
//  Networking
//
//  Created by Javier Plaza Sisqués on 20/9/21.
//

import Foundation

//Utilizamos encodable para poder serializar el objeto
struct NewUser: Encodable{
    let name: String?
    let email: String?
    let genere: String?
    let status: String?
}
