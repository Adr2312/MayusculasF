//
//  VerNotaViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

protocol protocoloEditar {
    func actualizarNota(nota: Notas, indice : Int)
}

class VerNotaViewController: UIViewController {
    var delegado : protocoloEditar!
    var unaNota : Notas!
    var indice : Int = 0
    
    @IBOutlet weak var lText: UITextView!
    @IBOutlet weak var nNota: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = unaNota.nombre
        nNota.text = unaNota.nota
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
            unaNota.nota = lText.text
            delegado.actualizarNota(nota: unaNota, indice: indice)
    }
    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
