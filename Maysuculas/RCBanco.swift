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
            (RCPregunta(textoIzquierda: "alemania", textoDerecha: "Alemania", ID: 1)),
            (RCPregunta(textoIzquierda: "espAña", textoDerecha: "España", ID: 2)),
            (RCPregunta(textoIzquierda: "nOruegA", textoDerecha: "Noruega", ID: 3)),
            (RCPregunta(textoIzquierda: "MéXico", textoDerecha: "México", ID: 4))
        ])
        lista.append([
            (RCPregunta(textoIzquierda: "sUiza", textoDerecha: "Suiza", ID: 5)),
            (RCPregunta(textoIzquierda: "cOlomBia", textoDerecha: "Colombia", ID: 6)),
            (RCPregunta(textoIzquierda: "arGeNtina", textoDerecha: "Argentina", ID: 7)),
            (RCPregunta(textoIzquierda: "CHilE", textoDerecha: "Chile", ID: 8))
        ])
        
        
        //list.append(RCPregunta(textoIzquierda: "alemania", textoDerecha: "Alemania", ID: 1))
        //list.append(RCPregunta(textoIzquierda: "espAña", textoDerecha: "España", ID: 2))
        //list.append(RCPregunta(textoIzquierda: "nOruegA", textoDerecha: "Noruega", ID: 3))
        //list.append(RCPregunta(textoIzquierda: "MéXico", textoDerecha: "México", ID: 4))
        //list.append(RCPregunta(textoIzquierda: "sUiza", textoDerecha: "Suiza", ID: 5))
        //list.append(RCPregunta(textoIzquierda: "cOlomBia", textoDerecha: "Colombia", ID: 6))
    }

}
