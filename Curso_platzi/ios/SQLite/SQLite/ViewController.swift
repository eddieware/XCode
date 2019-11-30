//
//  ViewController.swift
//  SQLite
//
//  Created by EDUARDO MEJIA on 23/11/19.
//  Copyright © 2019 EDUARDO MEJIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var guardarModelo: UITextField!
    
    @IBOutlet var buscarModelo: UITextField!
    @IBOutlet var precio: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func guarda(_ sender: UIButton) {
        if guardarModelo.hasText && precio.hasText {
            print("Datos llenados correctamente")
        }else{
            print("Llenar campos vacios")
        }
    }
    
    @IBAction func buscar(_ sender: UIButton) {
        if buscarModelo.hasText{
            print("Datos llenados correctamente")
            almacena(guardarModelo.text!, precio: Int(precio.Text!)!)
            
        }
        else{
            print("Llenar campos vacios")
        }
        
        
    }
    
    
    func almacena (_ modelo: String, precio: Int){
        
    }
    
    func encuentra(_ modelos: String){
        
    }
    

}

