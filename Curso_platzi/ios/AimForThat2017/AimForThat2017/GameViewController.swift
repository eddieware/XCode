//
//  ViewController.swift
//  AimForThat2017
//
//  Created by EDUARDO MEJIA on 15/01/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
// VIDEO 121 Y 122 LA VISTA Y EL CONTROLADOR

import UIKit

class GameViewController: UIViewController {
    var currentValue = 0 //global bar to use anywhere started in 50 because is the middle point from slider
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // primer metodo que se ejecuta para configurar la pantalla
        self.currentValue = lroundf(slider.value)//configuracion inicial del slider
    }


        @IBAction func showAlert2() {
            // func para llamar la alerta
            let message = "el valor del slider es: \(self.currentValue)"//declaramos mensaje
            let alert = UIAlertController(title: "Hola user", message:
            message, preferredStyle: .alert)// imprimimos message  ecrito en la const anterior
            let action = UIAlertAction(title: "Genial!", style: .default, handler: nil)//constante accion para poder quitar la alerta
            alert.addAction(action)//añade la accion
            present(alert, animated: true)//presenta la alerta
        }// fin del primer objeto producto de clase
    
    @IBAction func sliderMoved(_ sender: UISlider) {//constructor trae el valor de la interfaz
        self.currentValue = lroundf(sender.value)// guardamos el valor dentro de current value
    }
    //La gran mayoria del trabajo de las apps es hacer los view controllers
        
    
    
}

