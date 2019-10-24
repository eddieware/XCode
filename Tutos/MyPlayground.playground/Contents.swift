import UIKit

var message = "Hello, this is a new kind of concatenation"
print ("me acaban de saludar con unca conca nueva: \(message)")

let pi = 3.141692
let minT = -273.15

let meaningOfLife = 42
let anotherpi = 3 + 0.141592

//Literasles numericos
// Decimal
let decimalNumber = 17
//Binario
let decimalBinario = 0b10001
//Octal
let decimalOctal = 0o21
let decimalHexa = 0x11
let number = 1.25e2
let oneMillion = 1_000_000

//Casting
// constante nombre : designacion de bits = valor
let twoThousand : UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndone = twoThousand + UInt16(one)
//Comando para saber el tipo de dato en swift
type(of: twoThousand)

let three = Double(3)
type(of: three)

let oiFloat = Float(3.141592265)
let intPi = Int(3.141592265)
//Si la precision importa mucho mejor usa un double ya que como se puede observar el Float solo toma 6 decimales
let newN = -5.6565
let doublePi = Double(three) + 0.14159265
let newnumber = Int16.max
print(newnumber)

//Boolean Data
var myBool: Bool
let orangeAreOrage = false
let MangosCool = false

if orangeAreOrage {
    print("Me gustan las naranjas")
}else{
    print("No me gustan las naranjas")
}

let i=3

let myComparison = (i==3)

if i == 3 {
    print("tengo un 3")
}else{
    
    print("No tengo un 3")
}

let httpError : (Int, String) = (404, "Error not foun")

let coordinates : (Int, Int, Int)
let password : (String, Bool)
print ("El codigo de error es \(statusCode) y el mensah¡je que devuelve es ")
