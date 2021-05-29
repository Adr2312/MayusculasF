//
//  RCBanco.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 04/05/21.
//

import UIKit

class RCBanco: NSObject {
    var lista = [[RCPregunta]]()
    override init(){
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Alemania", ID: 1)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "españa", ID: 2)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Noruega", ID: 3)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "méxico", ID: 4))
        ])
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Suiza", ID: 5)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Colombia", ID: 6)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "argentina", ID: 7)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "chile", ID: 8))
        ])
        
        
        //list.append(RCPregunta(textoIzquierda: "alemania", textoDerecha: "Alemania", ID: 1))
        //list.append(RCPregunta(textoIzquierda: "espAña", textoDerecha: "España", ID: 2))
        //list.append(RCPregunta(textoIzquierda: "nOruegA", textoDerecha: "Noruega", ID: 3))
        //list.append(RCPregunta(textoIzquierda: "MéXico", textoDerecha: "México", ID: 4))
        //list.append(RCPregunta(textoIzquierda: "sUiza", textoDerecha: "Suiza", ID: 5))
        //list.append(RCPregunta(textoIzquierda: "cOlomBia", textoDerecha: "Colombia", ID: 6))
    }

}
