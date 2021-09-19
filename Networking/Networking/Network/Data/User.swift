//
//  User.swift
//  Networking
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import Foundation

//Añadimos el protocolo Decodable para poder serializarlo con Alamofire
struct UserResponse: Decodable {
    let data: User?
}

struct User: Decodable {
    let id: Int?
    let name: String?
    let email: String?
    let gender: String?
    let status: String?
    //let created_at: Date?
    //let updated_at: Date?
}
