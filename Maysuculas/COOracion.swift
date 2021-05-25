//
//  COOracion.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 11/05/21.
//

import UIKit

class COOracion: NSObject {

    var ID :Int = 1
    var oracion :String = ""

     init(ID:Int, oracion:String) {
        self.ID = ID
        self.oracion = oracion
    }
}
