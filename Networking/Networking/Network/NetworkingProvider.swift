//
//  NetworkingProvider.swift
//  Networking
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import Foundation
import Alamofire

final class NetworkingProvider{
    
    //Para crear un objeto singleton
    static let shared = NetworkingProvider()
    
    private let baseUrl = "https://gorest.co.in/public/v1/"
    private let statusOk = 200...299
    
    //Utilizamos closures para devolver datos de una peticion
    //Siempre que queramos retornar un closure de forma asincrona tendremos que anotar escaping
    func getUser(id: Int, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()){
        let url = "\(baseUrl)users/\(id)"
        
        //Peticion de tipo get con una validacion de entre 200 y 299
        //Con response decodable intentamos parsear la respuesta al objeto de tipo userResponse
        AF.request(url, method: .get).validate(statusCode: statusOk).responseDecodable(of: UserResponse.self, decoder: DateDecorder()){
            response in
            
            //Comprobamos si los datos estan OK
            if let user = response.value?.data{
                success(user)
            } else{
                failure(response.error)
            }
        }
    }
}
