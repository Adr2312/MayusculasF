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
        lista.append(COOracion(ID: 4, oracion: "Las personas con discapacidades tienen los mismos derechos que una persona sin discapacidades."))
        lista.append(COOracion(ID: 5, oracion: "La pelota rebotaba en los jugadores. Nadie podía enviarla al arco."))
        lista.append(COOracion(ID: 6, oracion: "Los gatos cuentan con un olfato muy sensible. Se comunican con gemidos y gruñidos."))
        lista.append(COOracion(ID: 7, oracion: "Luis y Marco, juegan muy bien al futbol y están en la selección de Bolivia."))
        lista.append(COOracion(ID: 8, oracion: "Esta noche vamos a ir al cine con Mauricio y Fabiana."))
        lista.append(COOracion(ID: 9, oracion: "En las ciudades de México, la delincuencia es muy frecuente."))
        lista.append(COOracion(ID: 10, oracion: "Las Matemáticas Financieras son una materia difícil en la universidad."))
        lista.append(COOracion(ID: 11, oracion: "La primavera besaba\nSuavemente la arboleda,\nY el verde nuevo brotaba\nComo una verde humareda."))
        lista.append(COOracion(ID: 12, oracion: "En el siglo XXI la tecnología es un de las cosas más importantes para los jóvenes."))
        lista.append(COOracion(ID: 13, oracion: "El actual rey de España se llama Juan Carlos I."))
        lista.append(COOracion(ID: 14, oracion: "Pedro, ¿Dónde estás? – Estoy en el jardín."))
        lista.append(COOracion(ID: 15, oracion: "Juanita, ¿A qué hora vas a llegar? – A las 5:00 PM."))
        lista.append(COOracion(ID: 16, oracion: "La destreza en los negocios se adquiere con disciplina. Es importante tener una idea clara de lo que se quiere. También resulta indispensable una estrategia adecuada."))
        lista.append(COOracion(ID: 17, oracion: "La biología es la ciencia que estudia a los seres vivos."))
        lista.append(COOracion(ID: 18, oracion: "¿Tomas té o café? Puedo preparar lo que prefieras."))
        lista.append(COOracion(ID: 19, oracion: "¡Oh! Es hermosa esta pintura renacentista."))
        lista.append(COOracion(ID: 20, oracion: "¡Ayuda! Necesito que alguien me ayude."))
        lista.append(COOracion(ID: 21, oracion: "La ONU (Organización de las Naciones Unidas)."))
        lista.append(COOracion(ID: 22, oracion: "La UNAM (Universidad Nacional Autónoma de México)."))
        lista.append(COOracion(ID: 23, oracion: "La SCJN (Suprema Corte de Justicia de la Nación)."))
        lista.append(COOracion(ID: 24, oracion: "El periódico El País."))
        lista.append(COOracion(ID: 25, oracion: "El periódico El O."))
        lista.append(COOracion(ID: 26, oracion: "La revista Investigaciones en Psicología."))
        lista.append(COOracion(ID: 27, oracion: "El Apóstol (para referirse al apóstol San Pablo)."))
        lista.append(COOracion(ID: 28, oracion: "El Libertador (para referirse a Simón Bolívar)."))
        lista.append(COOracion(ID: 29, oracion: "El Rey Sol (para referirse a Luis XIV de Francia)."))
        lista.append(COOracion(ID: 30, oracion: "Los Reyes Católicos (para referirse a Isabel y Fernando de España)."))
        lista.append(COOracion(ID: 31, oracion: "Juan Luis Guerra es un cantautor y músico dominicano."))
        lista.append(COOracion(ID: 32, oracion: "La película El laberinto del fauno fue dirigida en 2006 por el director mexicano Guillermo del T."))
        lista.append(COOracion(ID: 33, oracion: "No moriré del todo, amiga mía,\nMientras viva en tu alma mi recuerdo.\nUn verso, una palabra, una sonrisa,\nTe dirán claramente que no he muerto."))
    }
}
