//
//  ViewController.swift
//  AimForThat2017
//
//  Created by EDUARDO MEJIA on 15/01/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
// VIDEO 121 Y 122 LA VISTA Y EL CONTROLADOR

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


        @IBAction func showAlert2() {
            // func para llamar la alerta
            let alert = UIAlertController(title: "Hola mundo", message:
            "Este es mi Juego Aim Fort That!", preferredStyle: .alert)//creacion de la alerta
            let action = UIAlertAction(title: "Genial!", style: .default, handler: nil)//constante accion para poder quitar la alerta
            alert.addAction(action)//añade la accion
            present(alert, animated: true)//presenta la alerta
        }
    
    //La gran mayoria del trabajo de las apps es hacer los view controllers
        
    
    
}

