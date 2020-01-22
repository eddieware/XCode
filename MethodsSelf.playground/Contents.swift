import Foundation
import UIKit
class example1{
    class var maxexample: Int{
        return 3
    }
    
    func printDeb(){
        print("maximum: \(Self.maxexample).")
    }
}

class example2 : example1{
    override class var maxexample: Int {
        return 1
    }
}
