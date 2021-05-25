//
//  COBanco.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 11/05/21.
//

import UIKit

class COBanco: NSObject {
    var lista = [COOracion]()
    
    override init(){
        lista.append(COOracion(ID: 1, oracion: "El sumo pontifice visitará ciudades que hace años que no visitaba."))
        lista.append(COOracion(ID: 2, oracion:  "Pedro de Mendoza fue nombrado como el primer adelantado del río de la plata."))
        lista.append(COOracion(ID: 3, oracion: "Cientificos hablan de la posibilidad certera de encontrar agua en Marte."))
    }
}
