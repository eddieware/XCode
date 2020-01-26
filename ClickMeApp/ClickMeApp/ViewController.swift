//
//  ViewController.swift
//  ClickMeApp
//
//  Created by EDUARDO MEJIA on 25/01/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel! //el Outlet es para poder modificar su contenido como una variable visible
    var count = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickCount(_ sender: Any) {
        self.count += 1
        counterLabel.text = "Clicks: \(count)"
        
    }
    
}

