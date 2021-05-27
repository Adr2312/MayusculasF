//
//  AgregarNotaViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class AgregarNotaViewController: UIViewController {
    @IBOutlet weak var tTitulo: UITextField!
    @IBOutlet weak var tNota: UITextView!
    
    @IBOutlet weak var bBoton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        bBoton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if tTitulo.text == "" || tNota.text == ""{
            let alert = UIAlertController(title: "Error al guardar", message: "Coloque datos en los campos", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            return false
        }else{
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! NotasTableViewController
        vistaInicial.nNota = Notas(nombre: tTitulo.text!, nota: tNota.text)
    }
    
    @IBAction func quitarTeclado(_ sender: Any) {
        self.view.endEditing(true)
    }
    
}
