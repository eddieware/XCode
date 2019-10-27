
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
print(isActive)

//print("\(fullName.capitalized) tiene \(edad) de edad, el saldo en su cuenta es \(accountTotal) de pesos en su cuenta de ahorros")

//INTRODUCCION A ARRAYS

var transactions:[Float] = [20,10,100.0]
print(transactions.count)
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
dailytransactionsDict.sorted { ((key: "1nov", value: [1]), (key: "6nov", value: [1000])) -> Bool in
    <#code#>
}

print(dailytransactionsDict)
//dailytransaction.first
//dailytransaction[0].isEmpty
//dailytransaction.append("5nov":[111])
//print(dailytransactionsDict["5nov"])
//var dict = [ 1 : "abc", 2 : "cde"]
//dict.updateValue("efg", forKey: 3)
//print(dict)
