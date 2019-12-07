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
    let objetoFileHelper = FileHelper()
    var miDB:FMDatabase?=nil
    var alerta:UIAlertController?=nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        miDB=FMDatabase(path: objetoFileHelper.pathArchivoEnCarpetaDocumentos("Moto"))
    }

    @IBAction func guarda(_ sender: UIButton) {
        if guardarModelo.hasText && precio.hasText {
            print("Datos llenados correctamente")
            almacena(guardarModelo.text!, precio: Int(precio.text!)!)
        }else{
            print("Llenar campos vacios")
        }
    }
    
    @IBAction func buscar(_ sender: UIButton) {
        if buscarModelo.hasText{
            print("Datos llenados correctamente")
            encuentra(buscarModelo.text!)

        }
        else{
            print("Llenar campos vacios")
        }


    }
    
    
    func almacena (_ modelo: String, precio: Int){
        if(miDB!.open()){
  
            let inserta = miDB!.executeUpdate("INSERT INTO Motos (modelo, precio) values (?, ?)", withArgumentsIn: [modelo, precio])
  
            miDB!.close()
            if inserta{
            alerta = UIAlertController (title: "SQLite", message: "Registro almacenado \(precio)\(modelo)", preferredStyle: .alert)
            alerta!.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
            present(alerta!, animated: true, completion: nil)
        }else{
            print("No guardé")
            
        }
        }else{
        print("No abre DB")
        }
    }
    
    func encuentra(_ modelo: String){
        var precio: Int32?
        if(miDB!.open()){
            let querySQL = "SELECT * FROM Motos WHERE modelo = '"+modelo+"' "
            let resultados:FMResultSet? = try! miDB!.executeQuery(querySQL, withParameterDictionary: nil)
            
            while resultados!.next() == true {
                print(precio,modelo)
                precio = resultados!.int(forColumn: "precio")
                let modelo = resultados!.string(forColumn: "modelo")
            }
             miDB!.close()
                       
                       alerta = UIAlertController(title: "SQLite", message: "El modelo es: \(modelo) y el precio es: \(precio)", preferredStyle: .alert)
                       alerta!.addAction(UIAlertAction(title: "Aceptar", style: .cancel, handler: nil))
                       present(alerta!, animated: true, completion: nil)
                               
                   }
                   else{
                       print("La BD no esta disponible")
                   }
        }
        
    }
    
    
    



