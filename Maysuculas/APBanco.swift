//
//  APBanco.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 24/05/21.
//

import UIKit

class APBanco: NSObject {
    
    var lista = [APOracion]()
    
    override init(){
        lista.append(APOracion(ID: 1, Respuesta: "Guadalajara", OracionA: "Este verano tenemos planeado visitar ", OracionB: ".", X: "______",opcionA: "Guadalajara",opcionB: "Guadalajarra"))
        lista.append(APOracion(ID: 2, Respuesta: "Blanca", OracionA: "La bolsa es de ",OracionB: ".",X: "______",opcionA: "Blanca",opcionB: "Blanka"))
        lista.append((APOracion(ID: 3, Respuesta: "blanca", OracionA: "La pared es ",OracionB: ".",X: "______",opcionA: "Blanca",opcionB: "Blanka")))
        lista.append((APOracion(ID: 4, Respuesta: "Azul", OracionA: "Mi mama se llama ",OracionB: ".",X: "______",opcionA: "Azul",opcionB: "Asul")))
    }
}
