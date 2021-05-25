//
//  PuntjesViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 11/05/21.
//

import UIKit

class PuntajesViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var lVF: UILabel!
    @IBOutlet weak var lCO: UILabel!
    @IBOutlet weak var lRC: UILabel!
    @IBOutlet weak var lAP: UILabel!
    @IBOutlet weak var tNombre: UITextField!
    
    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var v3: UIView!
    @IBOutlet weak var v4: UIView!
    @IBOutlet weak var pm: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        v1.layer.cornerRadius = 10
        v2.layer.cornerRadius = 10
        v3.layer.cornerRadius = 10
        v4.layer.cornerRadius = 10
        
        pm.layer.cornerRadius = (pm.frame.size.width) / 2
        pm.clipsToBounds = true
        pm.layer.borderWidth = 3.0
        pm.layer.borderColor = UIColor.white.cgColor
        
        let defaults = UserDefaults.standard
        lVF.text = String(defaults.integer(forKey: "VF"))
        lCO.text = String(defaults.integer(forKey: "CO"))
        lRC.text = String(defaults.integer(forKey: "RC"))
        lAP.text = String(defaults.integer(forKey: "AP"))
        
        tNombre.text = defaults.string(forKey: "Nombre")
        
        
    }
    
    @IBAction func guardarTeclado(_ sender: Any) {
        self.view.endEditing(true)
        let defaults = UserDefaults.standard
        defaults.setValue(tNombre.text, forKey: "Nombre")
    }
    
    @IBAction func agregarFoto(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker,animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let foto = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        pm.image = foto
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let foto = pm.image?.pngData()
        defaults.setValue(foto, forKey: "PP")
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
