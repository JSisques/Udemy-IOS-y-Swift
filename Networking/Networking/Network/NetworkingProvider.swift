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
    
    func getUser(id: Int){
        let url = "\(baseUrl)users/\(id)"
        
        //Peticion de tipo get con una validacion de entre 200 y 299
        //Con response decodable intentamos parsear la respuesta al objeto de tipo userResponse
        AF.request(url, method: .get).validate(statusCode: statusOk).responseDecodable(of: UserResponse.self){
            response in
            
            //Comprobamos si los datos estan OK
            if let user = response.value?.data{
                print(user)
            } else{
                print(response.error?.responseCode ?? "No error")
            }
        }
    }
}
