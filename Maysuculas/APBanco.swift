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
        lista.append(APOracion(ID: 5, Respuesta: "Abril", OracionA: "Mi amiga ", OracionB: " tiene el pelo castaño.", X: "______", opcionA: "Abril", opcionB: "Abrril"))
        lista.append(APOracion(ID: 6, Respuesta: "abril", OracionA: "Yo cumplo años en el mes de ", OracionB: ".", X:"______", opcionA: "Abril", opcionB: "Avril"))
        lista.append(APOracion(ID: 7, Respuesta: "Alonso", OracionA: "Yo me llamo ", OracionB: ".", X: "______", opcionA: "Alonso", opcionB: "Alonzo"))
        lista.append(APOracion(ID: 8, Respuesta: "alonso", OracionA: "Mi abuela cultiva ", OracionB: ".", X: "______", opcionA: "Alonso", opcionB: "Alonzo"))
        lista.append(APOracion(ID: 9, Respuesta: "Ángel", OracionA: "Mi papá se llama ", OracionB: ".", X: "______", opcionA: "Ángel", opcionB: "Angel"))
        lista.append(APOracion(ID: 10, Respuesta: "ángeles", OracionA: "Me gustan los ", OracionB: ".", X: "______", opcionA: "Ángeles", opcionB: "Angeles"))
        lista.append(APOracion(ID: 11, Respuesta: "Aurora", OracionA: "Mi vecina se llama ", OracionB: ".", X: "______", opcionA: "Aurora", opcionB: "Auróra"))
        lista.append(APOracion(ID: 12, Respuesta: "Candela", OracionA: "Me llamo ", OracionB: ".", X: "______", opcionA: "Candela", opcionB: "Candéla"))
        lista.append(APOracion(ID: 13, Respuesta: "aurora", OracionA: "Yo quiero ver una ", OracionB: ".", X: "______", opcionA: "Aurora", opcionB: "Auróra"))
        lista.append(APOracion(ID: 14, Respuesta: "candela", OracionA: "Me gustan las ", OracionB: ".", X: "______", opcionA: "Candela", opcionB: "Candelá"))
        lista.append(APOracion(ID: 15, Respuesta: "Chile", OracionA: "Me gustaría visitar ", OracionB: ".", X: "______", opcionA: "Chile", opcionB: "Chilé"))
        lista.append(APOracion(ID: 16, Respuesta: "chile", OracionA: "Me gusta la comida con ", OracionB: ".", X: "______", opcionA: "Chile", opcionB: "Chilé"))
        lista.append(APOracion(ID: 17, Respuesta: "Concha", OracionA: "Mi maestra se llama ", OracionB: ".", X: "______", opcionA: "Concha", opcionB: "Cóncha"))
        lista.append(APOracion(ID: 18, Respuesta: "concha", OracionA: "Vi una ", OracionB: " en la playa.", X: "______", opcionA: "Concha", opcionB: "Cóncha"))
        lista.append(APOracion(ID: 19, Respuesta: "Delfín", OracionA: "Mi amigo se llama ", OracionB: "", X: "______", opcionA: "Delfín", opcionB: "Delfin"))
        lista.append(APOracion(ID: 20, Respuesta: "delfín", OracionA: "Mi animal favorito es el ", OracionB: ".", X: "______", opcionA: "Delfín", opcionB: "Delfin"))
        lista.append(APOracion(ID: 21, Respuesta: "Dolores", OracionA: "Esa bolsa es de ", OracionB: ".", X: "______", opcionA: "Dolores", opcionB: "Dolóres"))
        lista.append(APOracion(ID: 22, Respuesta: "dolores", OracionA: "Siento muhos ", OracionB: " en la espada.", X: "______", opcionA: "Dolores", opcionB: "Dólores"))
        lista.append(APOracion(ID: 23, Respuesta: "Esmeralda", OracionA: "Yo me llamo ", OracionB: ".", X: "______", opcionA: "Esmeralda", opcionB: "Esméralda"))
        lista.append(APOracion(ID: 24, Respuesta: "esmeralda", OracionA: "Mi piedra favorita es la ", OracionB: ".", X: "______", opcionA: "Esmeralda", opcionB: "Esmeraldá"))
        lista.append(APOracion(ID: 25, Respuesta: "Esperanza", OracionA: "A ", OracionB: " le gustan las flores.", X: "______", opcionA: "Esperanza", opcionB: "Esperánza"))
        lista.append(APOracion(ID: 26, Respuesta: "esperanza", OracionA: "Yo tengo mucha ", OracionB: ".", X: "______", opcionA: "Esperanza", opcionB: "Ésperanza"))
    }
}
