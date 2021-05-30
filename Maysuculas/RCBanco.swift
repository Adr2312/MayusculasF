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
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Juan", ID: 9)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Luisa", ID: 10)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Toluca", ID: 11)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Pikachú", ID: 12))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Méndez", ID: 13)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Monterrey", ID:14)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "La Central", ID: 15)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "El Quijote", ID: 16))
        ]
        )
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Hombre Araña", ID: 17)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Lic.", ID: 18)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Dr.", ID: 19)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Profr.", ID: 20))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Mtro.", ID: 21)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "XXI", ID: 22)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "XX", ID: 23)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "MM", ID: 24))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Estados Unidos", ID: 25)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Venezuela", ID: 26)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Canadá", ID: 27)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "México", ID: 28))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "América latina", ID: 29)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Alejandro", ID: 30)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Ana", ID: 31)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Luis", ID: 32))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Stefani", ID: 33)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Teresa", ID: 34)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Mesopotamia", ID: 35)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Mediterráneo", ID: 36))
        ])
        lista.append([
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "el Libertador", ID: 37)),
            (RCPregunta(textoIzquierda: "Mayuscula", textoDerecha: "Neptuno", ID: 38)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "hombre", ID: 39)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "perro", ID: 40))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "gato", ID: 41)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "ciudad", ID: 42)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "viernes", ID: 43)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "diciembre", ID: 44))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "braille", ID: 45)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "estufa", ID: 46)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "el francés", ID: 47)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "señor", ID: 48))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "fray", ID: 49)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "don", ID: 50)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "hermana", ID: 51)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "etc.", ID: 52))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "núm.", ID: 53)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "cuál", ID: 54)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "cuna", ID: 55)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "nuca", ID: 56))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "casa", ID: 57)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "caen", ID: 58)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "mica", ID: 59)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "lamí", ID: 60))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "lima", ID: 61)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "cima", ID: 62)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "malí", ID: 63)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "alim", ID: 64))
        ])
        
        lista.append([
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "cuan", ID: 65)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "edificio", ID: 66)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "foca", ID: 67)),
            (RCPregunta(textoIzquierda: "Minuscula", textoDerecha: "horca", ID: 68))
        ])
    }
}
