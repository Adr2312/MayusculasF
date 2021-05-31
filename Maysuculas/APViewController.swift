//
//  APViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 24/05/21.
//

import UIKit

class APViewController: UIViewController {
    
    @IBOutlet weak var B1: UIButton!
    @IBOutlet weak var B2: UIButton!
    @IBOutlet weak var B3: UIButton!
    @IBOutlet weak var B4: UIButton!
    @IBOutlet weak var lPuntos: UILabel!
    @IBOutlet weak var lOracion: UILabel!
    @IBOutlet weak var bButon: UIButton!
    @IBOutlet weak var lCount: UILabel!
    
    var timer = Timer()
    var countdown : Int = 30
    var start : Bool = false
    var lista = APBanco()
    var cont : Int = 0
    var listOp  : [String]!
    var orden : [Int]!
    var ordenB : [Int]!
    var index = 0
    var puntos = 0
    var selec : Bool = false
    var SB1 : Bool = false
    var SB2 : Bool = false
    var SB3 : Bool = false
    var SB4 : Bool = false
    var color :UIColor!
    var color2 :UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        color = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        color2 = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1)
        bButon.layer.cornerRadius = 10
        B1.layer.cornerRadius = 10
        B2.layer.cornerRadius = 10
        B3.layer.cornerRadius = 10
        B4.layer.cornerRadius = 10
        orden = randomNumber()
        ordenB = randomButton()
        listOp = llenar()
        cont = lista.lista.count
        B1.tag = 1
        B2.tag = 2
        B3.tag = 3
        B4.tag = 4
        lCount.text = String(countdown)
        startCountDown()
        update()
    }
    
    func startCountDown(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(coundDownMethod), userInfo: nil, repeats: true)
    }

    @objc func coundDownMethod(){
        
        if countdown <= 10 {
            lCount.textColor = .red
        }
        
        if countdown == 0{
            let alert = UIAlertController(title: "¡El tiempo termino!", message: "¿Deseas volver a empezar?", preferredStyle: .alert)
            let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
            let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                alert.addAction(restartaction)
                alert.addAction(backtom)
                present(alert, animated: true, completion: nil)
            
            countdown = 30
            lCount.text = String(countdown)
            lCount.textColor = .black
            start = false
        }else if start{
        countdown -= 1
        lCount.text = "\(countdown)"
        }
    }
    func randomNumber() -> [Int]{
        var arrSelec : [Int] = []
        let max = lista.lista.count - 1
        while arrSelec.count < lista.lista.count{
            let randomInt = Int.random(in: 0...max)
            if !arrSelec.contains(randomInt){
                arrSelec.append(randomInt)
            }
        }
        print(arrSelec)
        return arrSelec
    }
    
    func randomButton() -> [Int]{
        var arrSelec : [Int] = []
        let max = 3
        while arrSelec.count < 4{
            let randomInt = Int.random(in: 0...max)
            if !arrSelec.contains(randomInt){
                arrSelec.append(randomInt)
            }
        }
        print(arrSelec)
        return arrSelec
    }
    
    func update(){
       
        B1.backgroundColor = color
        B2.backgroundColor = color
        B3.backgroundColor = color
        B4.backgroundColor = color
        
        index = orden.first!
        listOp = llenar()
        lPuntos.text = String(puntos)
        lOracion.text = lista.lista[index].OracionA + lista.lista[index].X + lista.lista[index].OracionB
        B1.setTitle(listOp[ordenB.first!], for: .normal)
        ordenB.remove(at: 0)
        B2.setTitle(listOp[ordenB.first!], for: .normal)
        ordenB.remove(at: 0)
        B3.setTitle(listOp[ordenB.first!], for: .normal)
        ordenB.remove(at: 0)
        B4.setTitle(listOp[ordenB.first!], for: .normal)
        
    }
    
    func llenar() -> [String]{
        var list : [String] = []
        index = orden.first!
        list.append(lista.lista[index].opcionA)
        list.append(lista.lista[index].opcionB)
        list.append(lista.lista[index].opcionA.lowercased())
        list.append(lista.lista[index].opcionB.lowercased())
        return list
    }
    
    @IBAction func BB1(_ sender: Any) {
        if !start{
            start = true
        }
        
        if !selec {
        B1.backgroundColor = color2
        lOracion.text = lista.lista[index].OracionA + B1.currentTitle! + lista.lista[index].OracionB
            selec = true
            SB1 = true
        }else if SB2 {
            SB2 = false
            B2.backgroundColor = color
            SB1 = true
            B1.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B1.currentTitle! + lista.lista[index].OracionB
        }else if SB3 {
            SB3 = false
            B3.backgroundColor = color
            SB1 = true
            B1.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B1.currentTitle! + lista.lista[index].OracionB
        }else if SB4 {
            SB4 = false
            B4.backgroundColor = color
            SB1 = true
            B1.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B1.currentTitle! + lista.lista[index].OracionB
        }else{
            if SB1 {
                SB1 = false
                selec = false
                B1.backgroundColor = color
                lOracion.text = lista.lista[index].OracionA + lista.lista[index].X + lista.lista[index].OracionB
            }
        }
    }
    
    @IBAction func BB2(_ sender: Any) {
        if !start{
            start = true
        }
        if !selec {
        B2.backgroundColor = color2
        lOracion.text = lista.lista[index].OracionA + B2.currentTitle! + lista.lista[index].OracionB
            selec = true
            SB2 = true
        }else if SB1 {
            SB1 = false
            B1.backgroundColor = color
            SB2 = true
            B2.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B2.currentTitle! + lista.lista[index].OracionB
        }else if SB3 {
            SB3 = false
            B3.backgroundColor = color
            SB2 = true
            B2.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B2.currentTitle! + lista.lista[index].OracionB
        }else if SB4 {
            SB4 = false
            B4.backgroundColor = color
            SB2 = true
            B2.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B2.currentTitle! + lista.lista[index].OracionB
        }else{
            if SB2 {
                SB2 = false
                selec = false
                B2.backgroundColor = color
                lOracion.text = lista.lista[index].OracionA + lista.lista[index].X + lista.lista[index].OracionB
            }
        }
    }
    @IBAction func BB3(_ sender: Any) {
        if !start{
            start = true
        }
        if !selec {
        B3.backgroundColor = color2
        lOracion.text = lista.lista[index].OracionA + B3.currentTitle! + lista.lista[index].OracionB
            selec = true
            SB3 = true
        }else if SB1 {
            SB1 = false
            B1.backgroundColor = color
            SB3 = true
            B3.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B3.currentTitle! + lista.lista[index].OracionB
        }else if SB2 {
            SB2 = false
            B2.backgroundColor = color
            SB3 = true
            B3.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B3.currentTitle! + lista.lista[index].OracionB
        }else if SB4 {
            SB4 = false
            B4.backgroundColor = color
            SB3 = true
            B3.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B3.currentTitle! + lista.lista[index].OracionB
        }else{
            if SB3 {
                SB3 = false
                selec = false
                B3.backgroundColor = color
                lOracion.text = lista.lista[index].OracionA + lista.lista[index].X + lista.lista[index].OracionB
            }
        }
    }
    
    @IBAction func BB4(_ sender: Any) {
        if !start{
            start = true
        }
        if !selec {
        B4.backgroundColor = color2
        lOracion.text = lista.lista[index].OracionA + B4.currentTitle! + lista.lista[index].OracionB
            selec = true
            SB4 = true
        }else if SB1 {
            SB1 = false
            B1.backgroundColor = color
            SB4 = true
            B4.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B4.currentTitle! + lista.lista[index].OracionB
        }else if SB2 {
            SB2 = false
            B2.backgroundColor = color
            SB4 = true
            B4.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B4.currentTitle! + lista.lista[index].OracionB
        }else if SB3 {
            SB3 = false
            B3.backgroundColor = color
            SB4 = true
            B4.backgroundColor = color2
            lOracion.text = lista.lista[index].OracionA + B4.currentTitle! + lista.lista[index].OracionB
        }else{
            if SB4 {
                SB4 = false
                selec = false
                B4.backgroundColor = color
                lOracion.text = lista.lista[index].OracionA + lista.lista[index].X + lista.lista[index].OracionB
            }
        }
    }
    
    
    @IBAction func validar(_ sender: Any) {
        if selec{
            index = orden.first!
            if SB1{
                if B1.currentTitle == lista.lista[index].Respuesta{
                    puntos = puntos + 20
                    lPuntos.text = String(puntos)
                   
                    B1.backgroundColor = color
                    SB1 = false
                    selec = false
                    if cont <= 1{
                        let alert = UIAlertController(title: "¡Felicidades!", message: "El quiz termino, ¿deseas volver a empezar?", preferredStyle: .alert)
                        let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
                        let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                        alert.addAction(restartaction)
                        alert.addAction(backtom)
                        present(alert, animated: true, completion: nil)
                    }else{
                        orden.remove(at: 0)
                        index = orden.first!
                        ordenB = randomButton()
                        cont = cont - 1
                        update()
                        
                    }
                }else{
                    let alert = UIAlertController(title: "¡Incorrecto!", message: "La opción es incorrecta, vuelve a intentar.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(ok)
                    present(alert, animated: true, completion: nil)
                    puntos = puntos - 5
                    lPuntos.text = String(puntos)
                }
            }else if SB2{
                if B2.currentTitle == lista.lista[index].Respuesta{
                    puntos = puntos + 20
                    lPuntos.text = String(puntos)
                   
                    B2.backgroundColor = color
                    SB2 = false
                    selec = false
                    if cont <= 1{
                        let alert = UIAlertController(title: "¡Felicidades!", message: "El quiz termino, ¿deseas volver a empezar?", preferredStyle: .alert)
                        let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
                        let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                        alert.addAction(restartaction)
                        alert.addAction(backtom)
                        present(alert, animated: true, completion: nil)
                    }else{
                        orden.remove(at: 0)
                        index = orden.first!
                        ordenB = randomButton()
                        cont = cont - 1
                        update()
                        
                    }
                }else{
                    let alert = UIAlertController(title: "¡Incorrecto!", message: "La opción es incorrecta, vuelve a intentar.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(ok)
                    present(alert, animated: true, completion: nil)
                    puntos = puntos - 5
                    lPuntos.text = String(puntos)
                }
            }else if SB3{
                if B3.currentTitle == lista.lista[index].Respuesta{
                    puntos = puntos + 20
                    lPuntos.text = String(puntos)
                    
                    B3.backgroundColor = color
                    SB3 = false
                    selec = false
                    if cont <= 1{
                        let alert = UIAlertController(title: "¡Felicidades!", message: "El quiz termino, ¿deseas volver a empezar?", preferredStyle: .alert)
                        let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
                        let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                        alert.addAction(restartaction)
                        alert.addAction(backtom)
                        present(alert, animated: true, completion: nil)
                    }else{
                        orden.remove(at: 0)
                        index = orden.first!
                        ordenB = randomButton()
                        cont = cont - 1
                        update()
                        
                    }
                }else{
                    let alert = UIAlertController(title: "¡Incorrecto!", message: "La opción es incorrecta, vuelve a intentar.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(ok)
                    present(alert, animated: true, completion: nil)
                    puntos = puntos - 5
                    lPuntos.text = String(puntos)
                }
            }else{
                if B4.currentTitle == lista.lista[index].Respuesta{
                    puntos = puntos + 20
                    lPuntos.text = String(puntos)
                  
                    B4.backgroundColor = color
                    SB4 = false
                    selec = false
                    if cont <= 1{
                        let alert = UIAlertController(title: "¡Felicidades!", message: "El quiz termino, ¿deseas volver a empezar?", preferredStyle: .alert)
                        let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
                        let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                        alert.addAction(restartaction)
                        alert.addAction(backtom)
                        present(alert, animated: true, completion: nil)
                    }else{
                        orden.remove(at: 0)
                        index = orden.first!
                        ordenB = randomButton()
                        cont = cont - 1
                        update()
                        
                    }
                }else{
                    let alert = UIAlertController(title: "¡Incorrecto!", message: "La opción es incorrecta, vuelve a intentar.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alert.addAction(ok)
                    present(alert, animated: true, completion: nil)
                    puntos = puntos - 5
                    lPuntos.text = String(puntos)
                }
            }
        }else{
            let alert = UIAlertController(title: "¡Error!", message: "Elige una opción.", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func guardar(){
        let defaults = UserDefaults.standard
        let apPuntos = defaults.integer(forKey: "AP")
        if puntos > apPuntos{
            defaults.setValue(puntos, forKey: "AP")
        }
    }
    
    func restart() {
        guardar()
        puntos = 0
        lPuntos.text = String(puntos)
        orden = randomNumber()
        ordenB = randomButton()
        listOp = llenar()
        cont = lista.lista.count
        update()
    }
    
    func backtomm(){
        guardar()
        start = false
        _ = navigationController?.popToRootViewController(animated: true)
    }
    

    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
