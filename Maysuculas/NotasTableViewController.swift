//
//  NotasTableViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class NotasTableViewController: UITableViewController, UISearchBarDelegate, protocoloEditar {
    var listaNotas = [Notas]()
    var nNota = Notas(nombre: "", nota: "")
    var filteredData : [Notas]!
    /*var listaNotas = [
        Notas(nombre: "Titulos", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated"),
        Notas(nombre: "Meses", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated"),
        Notas(nombre: "Citas", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated"),
        Notas(nombre: "Nombres", nota: "Greetings. I am writing because I discovered a way to improve the taste of decaffeinated")
    ]*/
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        
        NotificationCenter.default.addObserver(self, selector: #selector(guardarNotas), name: UIApplication.didEnterBackgroundNotification, object: app)
        
        if FileManager.default.fileExists(atPath: dataFileURL().path){
            obtenerNotas()
        }
        filteredData = listaNotas
        
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
        return filteredData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nota", for: indexPath)

        cell.textLabel?.text = filteredData[indexPath.row].nombre
        cell.detailTextLabel?.text = filteredData[indexPath.row].nota

        return cell
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        listaNotas.append(nNota)
        filteredData.append(nNota)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "agregarNota"{
            let vistaNota = segue.destination as! VerNotaViewController
            let indice = tableView.indexPathForSelectedRow!
            vistaNota.unaNota = listaNotas[indice.row]
            vistaNota.indice = indice.row
            vistaNota.delegado = self
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
            filteredData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        
        if searchText == ""{
            filteredData = listaNotas
        }
        
        for word in listaNotas{
            
            if word.nota.uppercased().contains(searchText.uppercased()) || word.nombre.uppercased().contains(searchText.uppercased()){
                filteredData.append(word)
            }
        }
        
        tableView.reloadData()
    }

    func dataFileURL() -> URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = documentsDirectory.appendingPathComponent("Notas").appendingPathExtension("plist")
        print(pathArchivo.path)
        return pathArchivo
    }
    
    
    @IBAction func guardarNotas(){
        do{
            let data = try PropertyListEncoder().encode(listaNotas)
            try data.write(to: dataFileURL())
        }catch{
            print("Error al guardar las notas")
        }
    }
    
    func obtenerNotas(){
        listaNotas.removeAll()
        
        do{
            let data = try Data.init(contentsOf: dataFileURL())
            listaNotas = try PropertyListDecoder().decode([Notas].self, from: data)
            filteredData = listaNotas
        }
        catch{
            print("Error al cargar los datos del archivo")
        }
            
            tableView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        guardarNotas()
    }
    
    func actualizarNota(nota: Notas,indice:Int){
        listaNotas[indice].nota = nota.nota
        filteredData = listaNotas
        tableView.reloadData()
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
