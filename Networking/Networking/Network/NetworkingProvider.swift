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
    private let token = "9271d6eb16757f8843394c420ef79bf1e26cea11228dd10ae5f98c63a37eda9c"
    
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
    
    func addUser(user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()){
        let url = "\(baseUrl)users"
        let headers: HTTPHeaders = [.authorization(bearerToken: token)]
        
        //Utilizamos JSONParameterEncoder para transformar el parametro en un json
        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: statusOk).responseDecodable(of: UserResponse.self, decoder: DateDecorder()){
            response in
            
            //Comprobamos si los datos estan OK
            if let user = response.value?.data, user.id != nil{
                success(user)
            } else{
                failure(response.error)
            }
        }
    }
    
    func updateUser(id: Int, user: NewUser, success: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ()){
        let url = "\(baseUrl)users/\(id)"
        let headers: HTTPHeaders = [.authorization(bearerToken: token)]
        
        //Utilizamos JSONParameterEncoder para transformar el parametro en un json
        AF.request(url, method: .put, parameters: user, encoder: JSONParameterEncoder.default, headers: headers).validate(statusCode: statusOk).responseDecodable(of: UserResponse.self, decoder: DateDecorder()){
            response in
            
            //Comprobamos si los datos estan OK
            if let user = response.value?.data, user.id != nil{
                success(user)
            } else{
                failure(response.error)
            }
        }
    }
}
