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
    @IBOutlet weak var lCount: UILabel!
    
    
    var timer = Timer()
    var countdown : Int = 60
    var start : Bool = false
    var shouldStart : Bool = false
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
        lCount.text = String(countdown)
        startCountDown()
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
        //print(arrSelec)
        return arrSelec
    }
    
    func update(){
        var der = randomNumber()
        lPuntaje.text = String(puntos)
        //var izq = randomNumber()
        
        /*IB1.tag = izq.first!
        
        IB1.setTitle(lista.lista[index][izq.first!].textoIzquierda, for: .normal)
        izq.remove(at: 0)
        IB2.tag = izq.first!
        IB2.setTitle(lista.lista[index][izq.first!].textoIzquierda, for: .normal)
        izq.remove(at: 0)
        izq.remove(at: 0)
        izq.remove(at: 0)
        */
        
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
        
        if !shouldStart{
            start = true
            shouldStart = true
        }
        
        if semaforo && !pIB1{
            pIB1 = true
            pIB2 = false
            IB2.backgroundColor = .systemYellow
            IB1.backgroundColor = .green
        }else if semaforo && pIB1{
            pIB1 = false
            semaforo = false
            UIView.animate(withDuration: 0.1){
                self.IB1.backgroundColor = .systemYellow}
        }else{
            pIB1 = true
            UIView.animate(withDuration: 0.1){
                self.IB1.backgroundColor = .green}
            semaforo = true
        }
        
       
        
        
        if semaforo2 && pIB1 {
            validar()
        }
    }
    
    
    
    @IBAction func ifPressedIB2(_ sender: Any) {
        if !shouldStart{
            start = true
            shouldStart = true
        }
        
        if semaforo && !pIB2{
            pIB1 = false
            pIB2 = true
            IB1.backgroundColor = .systemYellow
            IB2.backgroundColor = .green
        }else if semaforo && pIB2{
            pIB2 = false
            semaforo = false
            UIView.animate(withDuration: 0.1){
                self.IB2.backgroundColor = .systemYellow}
        }else{
            pIB2 = true
            UIView.animate(withDuration: 0.1){
                self.IB2.backgroundColor = .green}
            semaforo = true
        }
        
        if semaforo2 && pIB2 {
            validar()
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
        if !shouldStart{
            start = true
            shouldStart = true
        }
        
        if semaforo2 && !pDB1{
            pDB1 = true
            pDB2 = false
            pDB3 = false
            pDB4 = false
            if DB2.isEnabled{
                DB2.backgroundColor = .systemYellow
            }
            
            if DB3.isEnabled{
                DB3.backgroundColor = .systemYellow
            }
            
            if DB4.isEnabled{
                DB4.backgroundColor = .systemYellow
            }
            
            DB1.backgroundColor = .green
        }else if semaforo2 && pDB1{
            pDB1 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .systemYellow}
        }else{
            pDB1 = true
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .green}
            semaforo2 = true
        }
        
        /*
        if pDB1{
            pDB1 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .systemYellow}
        }else{
            pDB1 = true
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .green}
            semaforo2 = true
        }*/
        
        if semaforo && pDB1 {
            validar()
        }
        
        
        /*
        if semaforo2 && pDB1{
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .systemYellow}
            pDB1 = false
            semaforo2 = false
        } else if semaforo2 == true{
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .systemYellow}
        }else if !semaforo{
            UIView.animate(withDuration: 0.1){
                self.DB1.backgroundColor = .green}
            semaforo2 = true
            pDB1 = true
            lD = DB1.currentTitle!
            tD = DB1.tag
        }else{
            validar()
        }*/
        
    }
    
    @IBAction func ifPressedDB2(_ sender: Any) {
        if !shouldStart{
            start = true
            shouldStart = true
        }
        
        if semaforo2 && !pDB2{
            pDB2 = true
            pDB1 = false
            pDB3 = false
            pDB4 = false
            if DB1.isEnabled{
                DB1.backgroundColor = .systemYellow
            }
            
            if DB3.isEnabled{
                DB3.backgroundColor = .systemYellow
            }
            
            if DB4.isEnabled{
                DB4.backgroundColor = .systemYellow
            }
            DB2.backgroundColor = .green
        }else if semaforo2 && pDB2{
            pDB2 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .systemYellow}
        }else{
            pDB2 = true
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .green}
            semaforo2 = true
        }
        
        /*
        if pDB2{
            pDB2 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .systemYellow}
        }else{
            pDB2 = true
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .green}
            semaforo2 = true
        }
        */
        if semaforo && pDB2 {
            validar()
        }
        
        /*if semaforo2 && pDB2{
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .systemYellow}
            pDB2 = false
            semaforo2 = false
        } else if semaforo2 == true{
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .systemYellow}
        }else if !semaforo{
            UIView.animate(withDuration: 0.1){
                self.DB2.backgroundColor = .green}
            semaforo2 = true
            pDB2 = true
            lD = DB2.currentTitle!
            tD = DB2.tag
        }else{
            validar()
        }*/
        
    }
    
    @IBAction func ifPressedDB3(_ sender: Any) {
        if !shouldStart{
            start = true
            shouldStart = true
            
        }
        
        if semaforo2 && !pDB3{
            pDB3 = true
            pDB2 = false
            pDB1 = false
            pDB4 = false
            if DB1.isEnabled{
                DB1.backgroundColor = .systemYellow
            }
            
            if DB2.isEnabled{
                DB2.backgroundColor = .systemYellow
            }
            
            if DB4.isEnabled{
                DB4.backgroundColor = .systemYellow
            }
            DB3.backgroundColor = .green
        }else if semaforo2 && pDB3{
            pDB3 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .systemYellow}
        }else{
            pDB3 = true
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .green}
            semaforo2 = true
        }
        /*
        if pDB3{
            pDB3 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .systemYellow}
        }else{
            pDB3 = true
            UIView.animate(withDuration: 0.1){
                self.DB3.backgroundColor = .green}
            semaforo2 = true
        }*/
        
        if semaforo && pDB3 {
            validar()
        }
        
    }
    
    @IBAction func ifPressedDB4(_ sender: Any) {
        if !shouldStart{
            start = true
            shouldStart = true
        }
        
        if semaforo2 && !pDB4{
            pDB4 = true
            pDB2 = false
            pDB3 = false
            pDB1 = false
            if DB1.isEnabled{
                DB1.backgroundColor = .systemYellow
            }
            
            if DB2.isEnabled{
                DB2.backgroundColor = .systemYellow
            }
            
            if DB3.isEnabled{
                DB3.backgroundColor = .systemYellow
            }
            DB4.backgroundColor = .green
        }else if semaforo2 && pDB4{
            pDB4 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .systemYellow}
        }else{
            pDB4 = true
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .green}
            semaforo2 = true
        }
        
        /*
        if pDB4{
            pDB4 = false
            semaforo2 = false
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .systemYellow}
        }else{
            pDB4 = true
            UIView.animate(withDuration: 0.1){
                self.DB4.backgroundColor = .green}
            semaforo2 = true
        }*/
        
        if semaforo && pDB4 {
            validar()
        }
    }
    
    func validar(){
        
        var derecha : String!
        var izquierda : String!
        
        if pIB1{
            izquierda = IB1.currentTitle
        }else{
            izquierda = IB2.currentTitle
        }
        
        if pDB1{
            derecha = lista.lista[index][DB1.tag].textoIzquierda
        }else if pDB2{
            derecha = lista.lista[index][DB2.tag].textoIzquierda
        }else if pDB3{
            derecha = lista.lista[index][DB3.tag].textoIzquierda
        }else{
            derecha = lista.lista[index][DB4.tag].textoIzquierda
        }
        
        print(izquierda!)
        print(derecha!)
        
        if izquierda == derecha{
            esCorrect = true
            puntos = puntos + 20
            lPuntaje.text = String(puntos)
            
            if pIB1{
                UIView.animate(withDuration: 0.1){
                    self.IB1.backgroundColor = .systemYellow}
                pIB1 = false
            }else{
                UIView.animate(withDuration: 0.1){
                    self.IB2.backgroundColor = .systemYellow}
                pIB2 = false
            }
            
            if pDB1{
                DB1.isEnabled = false
                DB1.backgroundColor = .none
                pDB1 = false
                
            }else if pDB2{
                DB2.isEnabled = false
                DB2.backgroundColor = .none
                pDB2 = false
            }else if pDB3{
                DB3.isEnabled = false
                DB3.backgroundColor = .none
                pDB3 = false
            }else if pDB4{
                DB4.isEnabled = false
                DB4.backgroundColor = .none
                pDB4 = false
            }
            
            cont = cont + 1
            
            if cont == 4{
                index = index + 1
                if index < lista.lista.count{
                    cont = 0
                    update()
                }else{
                    start = false
                    shouldStart = false
                    countdown = 60
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
            countdown = 60
            lCount.text = String(countdown)
            start = false
            lCount.textColor = .black
        }else if start{
        countdown -= 1
        lCount.text = "\(countdown)"
        }
    }
    
    
    func restart() {
        let defaults = UserDefaults.standard
        if puntos > defaults.integer(forKey: "RC"){
            defaults.setValue(puntos, forKey: "RC")
        }
        start = false
        shouldStart = false
        countdown = 60
        lCount.text = String(countdown)
        puntos = 0
        index = 0
        cont = 0
        update()
        
    }
    
    func backtomm(){
        start = false
        shouldStart = false
        let defaults = UserDefaults.standard
        if puntos > defaults.integer(forKey: "RC"){
            defaults.setValue(puntos, forKey: "RC")
        }
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
