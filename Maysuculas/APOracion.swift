//
//  APOracion.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 24/05/21.
//

import UIKit

class APOracion: NSObject {
    var ID : Int = 0
    var Respuesta : String = ""
    var OracionA : String = ""
    var OracionB : String = ""
    var X : String = ""
    var opcionA : String = ""
    var opcionB : String = ""
    
    init(ID : Int, Respuesta: String, OracionA : String, OracionB : String, X : String, opcionA : String, opcionB : String) {
        self.ID = ID
        self.OracionA = OracionA
        self.OracionB = OracionB
        self.X = X
        self.Respuesta = Respuesta
        self.opcionA = opcionA
        self.opcionB = opcionB
    }
}
