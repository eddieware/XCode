
import Foundation

var accountTotal: Float = 1_000_000

let name = "eduardo"
let sureName = " mejia"
let edad = 26
let fullName = "\(name)\(sureName)"//
//print(fullName)
//print(fullName.capitalized)
accountTotal += 100_000

//print(accountTotal)

var isActive = !fullName.isEmpty
//print(isActive)

//print("\(fullName.capitalized) tiene \(edad) de edad, el saldo en su cuenta es \(accountTotal) de pesos en su cuenta de ahorros")

//INTRODUCCION A ARRAYS

var transactions:[Float] = [20,10,100.0]
//print(transactions.count)
//print(transactions.count)
//print(transactions.isEmpty)
transactions.append(40)

transactions.first
transactions.last
transactions.removeFirst()
//print(transactions)

var dailytransactionsDict: [String:[Float]] = [
    "1nov":[20,10,100.0],
    "2nov":[1],
    "3nov":[100],
    "4nov":[1],
    "5nov":[111]
]
dailytransactionsDict.updateValue([500], forKey: "6nov")


//print(dailytransactionsDict)
//dailytransaction.first
//dailytransaction[0].isEmpty
//dailytransaction.append("5nov":[111])
//print(dailytransactionsDict["5nov"])
//var dict = [ 1 : "abc", 2 : "cde"]
//dict.updateValue("efg", forKey: 3)
//print(dict)
// USO EL IF ELSE ELSEIF
print(accountTotal)
//if accountTotal > 1_000_000{
//print("SOMOS RICOS")
//
//}else if accountTotal > 0{
//    print("No tenemos yanto dinero")
//}else{
//    print("No tenemos nada")
//}

//IN LINE IF
let hasMoney = accountTotal > 1_000_000 ? "Somos ricos" : "No somos ricos"
print(hasMoney)


//------------------------SWITCH----------------------------//
var age = 24
var tax = 1.0

switch age {
case 0...17:
    print("No podemos darte una tarjeta de credito")
case 18...22:
    print("la tasa de interes es del 2%")
    tax = 2
case 23...25:
    print("la tasa de interes es del 1.5%")
    tax = 1.5
    
default:
    print("La tasa de interes es del 1%")
}

let bankType = "B"

switch bankType {
case "B":
    print("Es el banco B")
default:
    print("Es otro banco")
}
