//
//  VFJuegoViewController.swift
//  Mayusculas
//
//  Created by user193715 on 4/18/21.
//

import UIKit

class VFJuegoViewController: UIViewController {
    @IBOutlet weak var bVerdadero: UIButton!
    @IBOutlet weak var bFalso: UIButton!
    @IBOutlet weak var puntos: UILabel!
    @IBOutlet weak var sTexto: UILabel!
    @IBOutlet weak var sPregunta: UILabel!
    @IBOutlet weak var lCount: UILabel!
    
    var start : Bool = false
    var countdown : Int = 60
    var timer = Timer()
    let banco = VFBanco()

    func delay(_ delay: Double, closure: @escaping ()->()) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lCount.text = String(countdown)
        updatePregunta()
        bVerdadero.layer.cornerRadius = 25
        bFalso.layer.cornerRadius = 25
        startCountDown()
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
    
    var nPregunta = 0
    var nPuntos = 0
    
    
    func updatePregunta(){
        if nPregunta <= banco.list.count - 1 {
            puntos.text = String(nPuntos)
            bVerdadero.isEnabled = true
            bFalso.isEnabled = true
            UIView.animate(withDuration: 1){
                self.bVerdadero.backgroundColor = .purple
                self.bFalso.backgroundColor = .purple
            }
            sTexto.text = banco.list[nPregunta].texto
            sPregunta.text = banco.list[nPregunta].pregunta
        }else {
            let defaults = UserDefaults.standard
            if defaults.integer(forKey: "VF") < nPuntos{
                defaults.setValue(nPuntos, forKey: "VF")
            }
            
            let alert = UIAlertController(title: "¡Felicidades!", message: "El quiz termino, ¿deseas volver a empezar?", preferredStyle: .alert)
            let restartaction = UIAlertAction(title: "Reiniciar", style: .default, handler: {action in self.restart()})
            let backtom = UIAlertAction(title: "Salir", style: .default, handler: {action in self.backtomm()})
                alert.addAction(restartaction)
                alert.addAction(backtom)
                present(alert, animated: true, completion: nil)
            
        }

    }
    
    func restart() {
        let defaults = UserDefaults.standard
        if defaults.integer(forKey: "VF") < nPuntos{
            defaults.setValue(nPuntos, forKey: "VF")
        }
        start = false
        countdown = 60
        nPuntos = 0
        nPregunta = 0
        updatePregunta()
    }

    @IBAction func pressedV(_ sender: Any) {
        if !start {
            start = true
        }
        
        if banco.list[nPregunta].CAnswer == 0 {
            UIView.animate(withDuration: 1){
                self.bVerdadero.backgroundColor = .green}
            nPuntos += 1
            nPregunta += 1
            bVerdadero.isEnabled = false
            bFalso.isEnabled = false
        }else{
            UIView.animate(withDuration: 1){
            self.bVerdadero.backgroundColor = .red}
            nPregunta += 1
            bVerdadero.isEnabled = false
            bFalso.isEnabled = false
            
        }
        self.delay(0.2){
            
            self.updatePregunta()
            
        }
    }
    
    func backtomm(){
        start = false
        let defaults = UserDefaults.standard
        if defaults.integer(forKey: "VF") < nPuntos{
            defaults.setValue(nPuntos, forKey: "VF")
        }
        _ = navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func pressedF(_ sender: Any) {
        
        if !start {
            start = true
        }
        if banco.list[nPregunta].CAnswer == 1 {
            UIView.animate(withDuration: 1){
            self.bFalso.backgroundColor = .green}
            nPuntos += 1
            nPregunta += 1
            bFalso.isEnabled = false
            bVerdadero.isEnabled = false
            
        }else{
           
            UIView.animate(withDuration: 1){
            self.bFalso.backgroundColor = .red}
            nPregunta += 1
            bFalso.isEnabled = false
            bVerdadero.isEnabled = false
        }
        self.delay(0.2){
            
            self.updatePregunta()
            
        }
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
