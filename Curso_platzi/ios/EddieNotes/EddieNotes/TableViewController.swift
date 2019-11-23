import UIKit
import CoreData

class TableViewController: UITableViewController {
    var manageObjects : [NSManagedObject] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let managedContext = appDelegate!.persistentCointarne.view
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return manageObjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let managedObject = manageObjects[indexPath.row]

        cell.textLabel?.text = managedObject.value(forKey: "palabra") as? String


        return cell
    }
    
    @IBAction func agregarNota(_ sender: Any) {
        let alerta = UIAlertController(title: "Agregar nOTA", message: "Escribe la nota ", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler: {(UIAlertAction)-> Void in
            
            let texField = alerta.textFields!.first
            
            self.guardarPalabra(palabra:texField!.text!)
            
            self.tableView.reloadData()
            
        })
        let cancelar = UIAlertAction(title: "Cancelar", style: .default, handler: {(UIAlertAction)-> Void in
        })
        alerta.addTextField{(UITextField:UITextField)->Void in}
        alerta.addAction(guardar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
    }
    
    func guardarPalabra(palabra:String){
        
//        let appDelegate = UIApplication.shared.delegate as? Appdelegate
    }
    
    
    
}
