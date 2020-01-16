//
//  ViewController.swift
//  car
//
//  Created by EDUARDO MEJIA on 12/12/19.
//  Copyright © 2019 EDUARDO MEJIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    

    @IBOutlet var tabRef: UITableView!
    var idArray = [String]()
    var imgArray = [String]()
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabRef.delegate = self
        tabRef.dataSource = self
        parse()
        tabRef.rowHeight = 300
        // Do any additional setup after loading the view.
    }
func parse()
{
    let url = Bundle.main.url(forResource: "s", withExtension: "json")
    if let url = url
    {
        let data = try? Data(contentsOf: url)
        do{
            guard let data = data
                else{return}
            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary
            let carsArray = json?.value(forKey: "cars") as! NSArray
            count = carsArray.count
            for arrayData in carsArray
            {
                let car = arrayData as! [String:Any]
                guard let id = car["id"]
                    else{return}
                idArray.append(id as! String)
                guard let name = car["name"]
                else{return}
                imgArray.append(name as! String)
                
            }
        }
        catch let error as NSError
        {
            print(error.localizedDescription)
        }
    }
    
    
    }//fin func parse
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabRef.dequeueReusableCell(withIdentifier: "id", for: indexPath)
        
        cell.textLabel?.text = idArray[indexPath.row]
        cell.imageView?.image = UIImage(named: imgArray[indexPath.row])
        cell.textLabel?.text = imgArray[indexPath.row]
        
        
        return cell
        
    }
    

}

