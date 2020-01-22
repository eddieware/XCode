//
//  ViewController.swift
//  Reto1_progresBarValueScreen
//
//  Created by EDUARDO MEJIA on 19/01/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//stepper
var currentValue = 5
var currentValue2 = 0.0
var strValue = readLine()
@IBOutlet var stepper: UIStepper!
//fin var stepper 1
    
//progressbar
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.currentValue = Int(stepper.value)//configuracion inicial del slider
    }


    //none to get empty in the constructor
    @IBAction func showAlert() {
        let message = "el valor del stepper es: \(self.currentValue)"//declaramos mensaje
        let alert = UIAlertController(title: "Hola ", message:
        message, preferredStyle: .alert)//creacion de la alerta
        let action = UIAlertAction(title: "OK!", style: .default, handler: nil)//constante accion para poder quitar la alerta
        alert.addAction(action)//añade la accion
        present(alert, animated: true)//presenta la alerta
    }//Fin del objeto para mostrar alertas
    
    
    @IBAction func StepperIncrease(_ sender: UIStepper) {
        self.currentValue = Int(sender.value)//
        print(currentValue)
    }
    
//    SECTION TO CONTROL THE PROGRESS BAR 1
    
    @IBAction func button(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
    }
    @objc func update()
    {
        progress.progress += 0.1
    }
    
    @IBOutlet weak var progress: UIProgressView!
    
    //    SECTION TO CONTROL THE PROGRESS BAR 2 WITH STEPPER BUTTON
    
    
    @IBAction func steper4(_ sender: UIStepper) {
        self.currentValue2 = (sender.value)//
        self.progressBar.progress = Float(currentValue2)
        print(currentValue2)
    }
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    //
    
    @IBOutlet weak var myText: UITextField!//placeholder
    @IBOutlet weak var textView: UITextView!
    @IBAction func setTextButton(_ sender: UIButton) {
        //grt text from text fieeld
        let mText = myText.text
        textView.text = mText
        print(mText!)// se destapa mtext para evitar el optional
        
    }
    
    
    
    
}




