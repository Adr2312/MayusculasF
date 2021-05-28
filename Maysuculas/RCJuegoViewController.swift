//
//  RCJuegoViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 04/05/21.
//

import UIKit

class RCJuegoViewController: UIViewController {
    
    @IBOutlet weak var IB1: UIButton!
    @IBOutlet weak var IB2: UIButton!
    @IBOutlet weak var DB1: UIButton!
    @IBOutlet weak var DB2: UIButton!
    @IBOutlet weak var DB3: UIButton!
    @IBOutlet weak var DB4: UIButton!
    @IBOutlet weak var lPuntaje: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    var start : Bool = false
    var pIB1 : Bool = false
    var pIB2 : Bool = false
    var pIB3 : Bool = false
    var pIB4 : Bool = false
    var pDB1 : Bool = false
    var pDB2 : Bool = false
    var pDB3 : Bool = false
    var pDB4 : Bool = false
    
    var index : Int = 0
    var lI :String = ""
    var lD :String = ""
    var puntos : Int = 0
    
    var tI : Int = -1
    var tD : Int = -1
    var cont : Int = 0
    
    var esCorrect : Bool = false
    
    let lista = RCBanco()
    var semaforo :Bool = false
    var semaforo2 :Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IB1.layer.cornerRadius = 10
        IB2.layer.cornerRadius = 10
        DB1.layer.cornerRadius = 10
        DB2.layer.cornerRadius = 10
        DB3.layer.cornerRadius = 10
        DB4.layer.cornerRadius = 10
        update()
        // Do any additional setup after loading the view.
    }
    
    
    
    func randomNumber() -> [Int]{
        var arrSelec : [Int] = []
        while arrSelec.count < 4{
            let randomInt = Int.random(in: 0..<4)
            if !arrSelec.contains(randomInt){
                arrSelec.append(randomInt)
            }
        }
        print(arrSelec)
        return arrSelec
    }
    
    func update(){
        var der = randomNumber()
        lPuntaje.text = String(puntos)
        var izq = randomNumber()
        
        IB1.tag = izq.first!
        
        IB1.setTitle(lista.lista[index][izq.first!].textoIzquierda, for: .normal)
        izq.remove(at: 0)
        IB2.tag = izq.first!
        IB2.setTitle(lista.lista[index][izq.first!].textoIzquierda, for: .normal)
        izq.remove(at: 0)
        izq.remove(at: 0)
        izq.remove(at: 0)
        
        DB1.tag = der.first!
        DB1.setTitle(lista.lista[index][der.first!].textoDerecha, for: .normal)
        der.remove(at: 0)
        DB2.tag = der.first!
        DB2.setTitle(lista.lista[index][der.first!].textoDerecha, for: .normal)
        der.remove(at: 0)
        DB3.tag = der.first!
        DB3.setTitle(lista.lista[index][der.first!].textoDerecha, for: .normal)
        der.remove(at: 0)
        DB4.tag = der.first!
        DB4.setTitle(lista.lista[index][der.first!].textoDerecha, for: .normal)
        der.remove(at: 0)
        
        IB1.isEnabled = true
        IB2.isEnabled = true
        IB1.backgroundColor = .systemYellow
        IB2.backgroundColor = .systemYellow
        DB1.backgroundColor = .systemYellow
        DB2.backgroundColor = .systemYellow
        DB3.backgroundColor = .systemYellow
        DB4.backgroundColor = .systemYellow
        
        DB1.isEnabled = true
        DB2.isEnabled = true
        DB3.isEnabled = true
        DB4.isEnabled = true
        
    }
    
    @IBAction func ifPressedIB1(_ sender: Any) {
        
        if semaforo && pIB1{
            UIView.animate(withDuration: 0.1){
                self.IB1.backgroundColor = .systemYellow}
            pIB1 = false
            semaforo = false
        } else if semaforo == true{
            UIView.animate(withDuration: 0.1){
                self.IB1.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.IB1.backgroundColor = .green}
            pIB1 = true
            semaforo = true
            lI = IB1.currentTitle!
            tI = IB1.tag
        }
    }
    
    
    
    @IBAction func ifPressedIB2(_ sender: Any) {
        if semaforo && pIB2{
            UIView.animate(withDuration: 0.1){
                self.IB2.backgroundColor = .systemYellow}
            pIB2 = false
            semaforo = false
        } else if semaforo == true{
            UIView.animate(withDuration: 0.1){
                self.IB2.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.IB2.backgroundColor = .green}
            semaforo = true
            pIB2 = true
            lI = IB2.currentTitle!
            tI = IB2.tag
        }
        
    }
    /*
    @IBAction func ifPressedIB3(_ sender: Any) {
        if semaforo && pIB3{
            UIView.animate(withDuration: 0.1){
                self.IB3.backgroundColor = .systemYellow}
            pIB3 = false
            semaforo = false
        } else if semaforo == true{
            UIView.animate(withDuration: 0.1){
                self.IB3.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.IB3.backgroundColor = .green}
            semaforo = true
            pIB3 = true
            lI = IB3.currentTitle!
            tI = IB3.tag
        }
    }
    
    @IBAction func ifPressedIB4(_ sender: Any) {
        if semaforo && pIB4{
            UIView.animate(withDuration: 0.1){
                self.IB4.backgroundColor = .systemYellow}
            pIB4 = false
            semaforo = false
        } else if semaforo == true{
            UIView.animate(withDuration: 0.1){
                self.IB4.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.IB4.backgroundColor = .green}
            semaforo = true
            pIB4 = true
            lI = IB4.currentTitle!
            tI = IB4.tag
        }
    }*/
    
    @IBAction func ifPressedDB1(_ sender: Any) {
        if semaforo2 && pDB1{
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .systemYellow}
            pDB1 = false
            semaforo2 = false
        } else if semaforo2 == true{
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .green}
            semaforo2 = true
            pDB1 = true
            lD = DB1.currentTitle!
            tD = DB1.tag
            validar()
        }
        
    }
    
    @IBAction func ifPressedDB2(_ sender: Any) {
        if semaforo2 && pDB2{
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .systemYellow}
            pDB2 = false
            semaforo2 = false
        } else if semaforo2 == true{
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .green}
            semaforo2 = true
            pDB2 = true
            lD = DB2.currentTitle!
            tD = DB2.tag
            validar()
        }
        
    }
    
    @IBAction func ifPressedDB3(_ sender: Any) {
        if semaforo2 && pDB3{
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .systemYellow}
            pDB3 = false
            semaforo2 = false
        } else if semaforo2 == true{
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .green}
            semaforo2 = true
            pDB3 = true
            lD = DB3.currentTitle!
            tD = DB3.tag
            validar()
        }
        
    }
    
    @IBAction func ifPressedDB4(_ sender: Any) {
        if semaforo2 && pDB4{
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .systemYellow}
            pDB4 = false
            semaforo2 = false
        } else if semaforo2 == true{
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .systemYellow}
        }else{
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .green}
            semaforo2 = true
            pDB4 = true
            lD = DB4.currentTitle!
            tD = DB4.tag
            validar()
        }
    }
    
    func validar(){
        print(tI)
        print(tD)
        
        if tD == tI{
            esCorrect = true
            puntos = puntos + 5
            lPuntaje.text = String(puntos)
            if pIB1{
                IB1.isEnabled = false
                IB1.backgroundColor = .none
                pIB1 = false
            }else if pIB2{
                IB2.isEnabled = false
                IB2.backgroundColor = .none
                pIB2 = false
            }else if pIB3{
              //  IB3.isEnabled = false
                //IB3.backgroundColor = .none
                pIB3 = false
            }else{
                //IB4.isEnabled = false
                //IB4.backgroundColor = .none
                pIB4 = false
            }
            
            if pDB1 {
                DB1.isEnabled = false
                DB1.backgroundColor = .none
                pDB1 = false
            }else if pDB2{
                DB2.isEnabled = false
                pDB2 = false
                DB2.backgroundColor = .none
            }else if pDB3{
                DB3.isEnabled = false
                pDB3 = false
                DB3.backgroundColor = .none
            }else if pDB4{
                DB4.isEnabled = false
                pDB4 = false
                DB4.backgroundColor = .none
            }
            cont = cont + 1
            
            if cont == 4{
                
                index = index + 1
                if index < lista.lista.count{
                    cont = 0
                    update()
                }else{
                    let defaults = UserDefaults.standard
                    if puntos > defaults.integer(forKey: "RC"){
                        defaults.setValue(puntos, forKey: "RC")
                    }
                    let alert = UIAlertController(title: "¡Felicidades!", message: "El quiz termino, ¿deseas volver a empezar?", preferredStyle: .alert)
                    let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
                    let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                    alert.addAction(restartaction)
                    alert.addAction(backtom)
                    present(alert, animated: true, completion: nil)
                }
            }
            
        }else{
            esCorrect = false
            puntos = puntos - 5
            lPuntaje.text = String(puntos)
            if pIB1{
                pIB1 = false
                UIView.animate(withDuration: 0.1){
                    self.IB1.backgroundColor = .systemYellow}
            }else if pIB2{
                pIB2 = false
                UIView.animate(withDuration: 0.1){
                    self.IB2.backgroundColor = .systemYellow}
            }else if pIB3{
                pIB3 = false
                /*UIView.animate(withDuration: 0.1){
                    self.IB3.backgroundColor = .systemYellow}*/
            }else{
                pIB4 = false
               /* UIView.animate(withDuration: 0.1){
                    self.IB4.backgroundColor = .systemYellow}*/
            }
            
            if pDB1 {
                pDB1 = false
                UIView.animate(withDuration: 0.1){
                    self.DB1.backgroundColor = .systemYellow}
            }else if pDB2{
                pDB2 = false
                UIView.animate(withDuration: 0.1){
                    self.DB2.backgroundColor = .systemYellow}
            }else if pDB3{
                pDB3 = false
                UIView.animate(withDuration: 0.1){
                    self.DB3.backgroundColor = .systemYellow}
            }else if pDB4{
                pDB4 = false
                UIView.animate(withDuration: 0.1){
                    self.DB4.backgroundColor = .systemYellow}
            }
            
            
        }
        
        
        semaforo = false
        semaforo2 = false
    }
    
    func restart() {
        puntos = 0
        index = 0
        cont = 0
        update()
        
    }
    
    func backtomm(){
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
