//
//  RCPregunta.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 04/05/21.
//

import UIKit

class RCPregunta: NSObject {

    var textoIzquierda : String = ""
    var textoDerecha : String = ""
    var ID : Int = -1
    
    init(textoIzquierda:String, textoDerecha:String, ID: Int) {
        self.textoIzquierda = textoIzquierda
        self.textoDerecha = textoDerecha
        self.ID = ID
    }
    
}
