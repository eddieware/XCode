//
//  ViewController.swift
//  colorMakerApp
//
//  Created by EDUARDO MEJIA on 25/01/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //SWITCHES
    @IBOutlet weak var switchRed: UISwitch!
    @IBOutlet weak var switchGreen: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    //UIVIEW
    @IBOutlet weak var backGround: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func makeColor(_ sender: UISwitch) {
        
        backGround.setValue(250, forKey: "red")
       //print(switchRed.isOn)
    
    }
    
    
    
}

