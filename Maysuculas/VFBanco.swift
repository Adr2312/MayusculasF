//
//  VFBanco.swift
//  Mayusculas
//
//  Created by user193715 on 4/17/21.
//

import UIKit

class VFBanco: NSObject {

    var list = [VFPregunta]()
    override init() {
        list.append(VFPregunta(texto: "En la mitología griega el dios más famoso es Zeus.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 0))
        list.append(VFPregunta(texto: "A él le apodan El Caimán.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 0))
        list.append(VFPregunta(texto: "Al comandante en jefe le apodan señor.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 1))
        list.append(VFPregunta(texto: "La Administración General del E.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 0))
        list.append(VFPregunta(texto: "La orden del santísimo sacramento y de nuestra señora", pregunta: "¿La oración está escrita correctamente?", CAnswer: 1))
        list.append(VFPregunta(texto: "Seat es una compañía automovilística de origen español.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 0))
        list.append(VFPregunta(texto: "El mar negro está localizado en Asia Menor y el sureste de Europa.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 1))
        list.append(VFPregunta(texto: "África, Asia, Europa, América, Oceanía son considerados continentes.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 0))
        list.append(VFPregunta(texto: "La plaza de San Marcos es un destino muy popular en Venecia.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 0))
        list.append(VFPregunta(texto: "Aquiles es un guerrero y héroe de la mitología griega, hijo de peleo y t", pregunta: "¿La oración está escrita correctamente?", CAnswer: 1))
        list.append(VFPregunta(texto: "El instituto nacional de estadística y geografía (INEGI), entre otras funciones, se encarga de realizar los censos nacionales.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 1))
        list.append(VFPregunta(texto: "paulaner es una de las marcas de cerveza alemana más conocidas internacionalmente.", pregunta: "¿La oración está escrita correctamente?", CAnswer: 1))
    }
}
