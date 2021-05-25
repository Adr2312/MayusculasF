//
//  NotasTableViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class NotasTableViewController: UITableViewController {
    var nNota = Notas(nombre: "", nota: "")
    var listaNotas = [
        Notas(nombre: "Nota 1", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated"),
        Notas(nombre: "Nota 2", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated"),
        Notas(nombre: "Nota 3", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated"),
        Notas(nombre: "Nota 4", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated")
    ]

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
        return listaNotas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nota", for: indexPath)

        cell.textLabel?.text = listaNotas[indexPath.row].nombre
        cell.detailTextLabel?.text = listaNotas[indexPath.row].nota

        return cell
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        listaNotas.append(nNota)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "agregarNota"{
            let vistaNota = segue.destination as! VerNotaViewController
            let indice = tableView.indexPathForSelectedRow
            vistaNota.unaNota = listaNotas[indice!.row]
        }
        
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaNotas.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }
    

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
