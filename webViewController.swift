//
//  webViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 24/05/21.
//

import UIKit
import WebKit
class webViewController: UIViewController, WKUIDelegate{

    @IBOutlet weak var web: WKWebView!
    var link : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //    web.url?.set
        // Do any additional setup after loading the view.
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
