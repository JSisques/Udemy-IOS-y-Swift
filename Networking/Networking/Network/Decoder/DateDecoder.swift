//
//  DateDecoder.swift
//  Networking
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import Foundation

//Siempre que queramos formatear un objeto JSON tendremos que llamar a JSON Decoder
final class DateDecorder: JSONDecoder{
    
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
        
        //Indicamos el formato de la fecha
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSXXX"
        
        //Indicamos la decodificacion
        dateDecodingStrategy = .formatted(dateFormatter)
    }
}
