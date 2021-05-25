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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaInicial = segue.destination as! NotasTableViewController
        vistaInicial.nNota = Notas(nombre: tTitulo.text!, nota: tNota.text)
    }
    
    @IBAction func quitarTeclado(_ sender: Any) {
        self.view.endEditing(true)
    }
    
}
