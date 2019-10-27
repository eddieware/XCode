
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
print(transactions)

