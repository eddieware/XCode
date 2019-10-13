
import UIKit

class ViewController: UIViewController {

    
   
    @IBAction func crearMoto(_ sender: UIButton) {
        print("Ya se creo la Moto")
    }
    
    @IBAction func propiedadesMoto(_ sender: UIButton) {
        
        print("Mi moto es Pulsa: Ms200")
    }
    @IBAction func prenderMoto(_ sender: UIButton) {
        print("La Moto esta encendida")
    }
    
    @IBAction func ApagarMoto(_ sender: UIButton) {
        print("La Moto esta apagadas")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

