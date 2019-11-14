
import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var wbkContenido: WKWebView!
    @IBOutlet var txtBuscar: UITextField!
    let palabra : String?
        = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buscar(_ sender: Any) {
        
        palabra = txtBuscar.text!
        
        let urlBuscar = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!.replacingOccurrences(of: " ", with: "20%" ))"
        
        let objetoUrl = URL(string:urlBuscar)
        
        let tarea = URLSession.shared.dataTask(with: objetoUrl!){
            (datos, respuesta, error) in
            if error != nil
            {
                print(error!)
            }
            else{
                do{
                    let json = try JSONSerialization.jsonObject(with: datos ?? <#default value#>, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    let querySubJson = json["query"] as! [String:Any]
                    let pagesSubJson = querySubJson["Pages"] as! [String:Any]
                    let idSubJson = pagesSubJson["29856"] as! [String:Any]
                    
                    
                    
                    
                }catch{
                    print("Error en JSON")
                }
            }
        }
    }
    tarea.resume()
}

