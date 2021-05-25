//
//  COViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 11/05/21.
//

import UIKit

class COViewController: UIViewController {
    
    
    @IBOutlet weak var lPuntos: UILabel!
    @IBOutlet weak var lOracion: UILabel!
    @IBOutlet weak var tfOracion: UITextView!
    @IBOutlet weak var bButon: UIButton!
    
    let lista = COBanco()
    var indice = 0
    var puntos = 0
    var index = 0
    var orden : [Int]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        bButon.layer.cornerRadius = 10
        let orden1 = randomNumber()
        orden = orden1
        update()
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
    
    @IBAction func bVerificar(_ sender: Any) {
        
        //print(tfOracion.text)
        //print(lOracion.text)
        if tfOracion.text == lista.lista[index].oracion{
            puntos = puntos + 20
            
            if indice == lista.lista.count - 1 {
                let defaults = UserDefaults.standard
                if(puntos > defaults.integer(forKey: "CO")){
                    defaults.setValue(puntos, forKey: "CO")
                }
                
                let alert = UIAlertController(title: "Felicidades!", message: "El quiz termino, deseas volver a empezar?", preferredStyle: .alert)
                let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
                let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                alert.addAction(restartaction)
                alert.addAction(backtom)
                present(alert, animated: true, completion: nil)
            }else{
                indice = indice + 1
                update()
            }
        }else{
            let alert = UIAlertController(title: "Incorrecto!", message: "La oracion tiene errores, vuelve a intentar", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            tfOracion.text = ""
            puntos = puntos - 5
            lPuntos.text = String(puntos)
        }
        
    }
    
    
    func restart() {
        puntos = 0
        indice = 0
        orden = randomNumber()
        update()
    }
    
    func update(){
        index = orden.first!
        lPuntos.text = String(puntos)
        lOracion.text = lista.lista[orden.first!].oracion.lowercased()
        orden.remove(at: 0)
        tfOracion.text = ""
    }
    func backtomm(){
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func quitarTeclado(_ sender: Any) {
        self.view.endEditing(true)
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
