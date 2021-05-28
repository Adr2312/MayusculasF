//
//  Fuentes2TableViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 28/05/21.
//

import UIKit

class Fuentes2TableViewController: UITableViewController {

    var listaFuentes = [
        Fuentes(nombre: "RAE", ayuda: "Uso de Mayuscúlas", link: "https:/www.rae.es/qpd/mayúsculas"),
        Fuentes(nombre: "Celeberrima", ayuda: "Reglas para el uso de mayúsculas", link: "https://gramatica.celeberrima.com/reglas-de-ortografia-para-el-uso-adecuado-de-las-mayusculas"),
        Fuentes(nombre: "Un Profesor", ayuda: "Uso de | Reglas y ejemplos", link: "https://www.unprofesor.com/lengua-espanola/uso-de-mayusculas-reglas-y-ejemplos-1672.html"),
        Fuentes(nombre: "Academia Mexicana de la Lengua", ayuda: "Uso de mayúsculas en titulos", link: "https://www.academia.org.mx/espin/respuestas/item/uso-de-mayusculas-en-los-titulos")
    ]
    
    var rae = "https://tinyurl.com/yhpqvtry"

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaFuentes.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fuentes", for: indexPath) as! FuentesTableViewCell
        cell.lNombre.text = listaFuentes[indexPath.row].nombre
        cell.lAyuda.text = listaFuentes[indexPath.row].ayuda
        cell.lLink.text = listaFuentes[indexPath.row].link
        cell.lLink.textColor = .blue
    
        
        // Configure the cell...

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        var enlace : URL!
        if indexPath.row == 0{
             enlace = URL(string: rae)
        }else{
             enlace = URL(string: listaFuentes[indexPath.row].link)
        }
        UIApplication.shared.open(enlace!)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 195
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
