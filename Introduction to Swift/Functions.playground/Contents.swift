import UIKit

//Writing functions
func printHelp(){
    let message = """
Welcome to MyApp!
Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()

//Accepting parameters
print("Hello, world!")
func square(number: Int) {
    print(number * number)
}
square(number: 5)

//Returning values
func squaree(number: Int) -> Int {
    return number * number
}
let result = squaree(number: 8)
print(result)

//Parameter labels
func kareAl (number: Int) -> Int {
    return number * number
}
let sonuc = kareAl(number: 8)

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Osman Murat")

//Omitting parameter labels
func greet (_ person: String) {
    print("Hello, \(person)!")
}
greet("Murat")

//Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Osman Murat")
greet("Osman Murat Haşlak", nicely: false)

//Variadic functions
print("Haters","gonna","hate")
func square(numbers: Int...){
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1,2,3,4,5)

//Writing throwing functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

//Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters
//Bir nevi pointer gibi sayının ram adresine gidip tuttuğu değeri değiştiriyor
func doubleInPlace(number: inout Int){
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)
