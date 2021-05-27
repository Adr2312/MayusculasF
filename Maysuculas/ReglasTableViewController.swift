//
//  ReglasTableViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class ReglasTableViewController: UITableViewController {

    var listaReglas = [
        Reglas(ejemplo: "Se escribe mayúscula después de un punto.", regla: "El hombre se acercó a la puerta y tocó. Nadie contestó. Volvió a intentarlo y al poco tiempo salió una mujer. Él la miró."),
        Reglas(ejemplo: "Se escribe mayúscula al inicio de un párrafo u oración.", regla: "La biología es la ciencia que estudia a los seres vivos."),
        Reglas(ejemplo: "Se escribe mayúscula después de un signo de interrogación.", regla: "¿Tomas té o café? Puedo preparar lo que prefieras."),
        Reglas(ejemplo: "Se escriben mayúsculas después de un signo de admiración o exclamación.", regla: "¡Oh! Es hermosa esta pintura renacentista."),
        Reglas(ejemplo: "Se escribe mayúscula al iniciar una cita textual, si ésta corresponde al inicio de una oración o párrafo.", regla: "El autor de este libro afirma en su primer capítulo: “En el mundo contemporáneo existe una tendencia a la idealización de los objetos materiales”."),
        Reglas(ejemplo: "Se escriben con mayúsculas los números romanos.", regla: "Esta enciclopedia consta de XIV."),
        Reglas(ejemplo: "Se escriben con mayúsculas las siglas.", regla: "La UNAM (Universidad Nacional Autónoma de México)."),
        Reglas(ejemplo: "Se escriben con mayúscula inicial los nombres de obras artísticas, como películas, libros, esculturas, pinturas, etc. Se escribe en mayúscula la inicial de la primera palabra y los nombres propios, en caso de que el nombre los tenga.", regla: "La Afrodita de Milo o Venus de Milo es una escultura griega que data aproximadamente entre los años 130 a. C. y 100 a. C."),
        Reglas(ejemplo: "Se escriben con mayúscula todas las palabras que comprenden el nombre del título de publicaciones periódicas.", regla: "El periódico El País."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres dados por antonomasia. La antonomasia es una figura retórica en la que a alguien se le nombra por alguna cualidad que lo caracteriza o viceversa. En los casos en los que un nombre común es utilizado por antonomasia como si fuese propio debe escribirse en mayúsculas.", regla: "El Apóstol (para referirse al apóstol San Pablo)."),
        Reglas(ejemplo: "Se escriben con mayúsculas los nombres y apellidos de personas.", regla: "Juan Luis Guerra es un cantautor y músico dominicano."),
        Reglas(ejemplo: "Se escriben con mayúsculas los nombres propios dados a personajes mitológicos y divinidades.", regla: "Febe en la mitología griega es una de las titánides, hijo de Urano y G."),
        Reglas(ejemplo: "Se escriben con mayúsculas los apodos y sobrenombres.", regla: "A él le apodan El Caimán."),
        Reglas(ejemplo: "Se escriben con mayúsculas los nombres de instituciones y organizaciones.", regla: "La Administración General del E."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres de marcas comerciales.", regla: "Seat es una compañía automovilística de origen español."),
        Reglas(ejemplo: "Se escriben con mayúsculas los nombres propios de lugares geográficos.", regla: "Londres es la capital de I"),
        Reglas(ejemplo: "Se escriben con mayúsculas los hidrónimos (nombres de ríos, lagos, océanos, arroyos, etc.).", regla: "El mar Negro está localizado en Asia Menor y el sureste de Europa."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres propios de espacios públicos y urbanos, como glorietas, parques, plazas, etc.", regla: "El barrio Revolución."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres propios de acontecimientos históricos.", regla: "La guerra de I."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres de edades históricas.", regla: "La Baja Edad M."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres propios de órdenes religiosas.", regla: "La Orden de San Agustín."),
        Reglas(ejemplo: "Se escriben con mayúscula los nombres de festividades.", regla: "La Noche B")
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
        return listaReglas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "regla", for: indexPath)

        cell.textLabel?.text = listaReglas[indexPath.row].ejemplo
        cell.detailTextLabel?.text = listaReglas[indexPath.row].regla

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verRegla"{
            let vistaRegla = segue.destination as! VerReglaViewController
            let indice = tableView.indexPathForSelectedRow
            vistaRegla.unaRegla = listaReglas[indice!.row]
        }
        
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
