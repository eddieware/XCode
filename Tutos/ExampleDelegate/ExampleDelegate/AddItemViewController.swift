//
//  AddItemViewController.swift
//  ExampleDelegate
//
//  Created by EDUARDO MEJIA on 23/10/19.
//  Copyright © 2019 EDUARDO MEJIA. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    //Se crea el Outlet que herede de UI Text Field
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Funcion mostrada en el tutorial
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
     
    @IBAction func cancel(sender: AnyObject) {
         
    }
    @IBAction func cance(_ sender: Any) {
    }
    
    @IBAction func create(sender: AnyObject) {
         
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
