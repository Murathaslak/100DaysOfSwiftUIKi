import UIKit

//Handling missing data
var age: Int? = nil
age = 38

//Unwrapping optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrappedd = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrappedd)!")
}

//Force unwrapping
let str = "5"
let num = Int(str)

//Implicitly unwrapped optionals
let agee: Int! = nil

//Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"

//Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

//Failable initializers
let string = "5"
let numara = Int(string)

struct Person {
    var id:String
    
    init?(id:String) {
        if id.count == 1 {
            self.id = id
        } else {
            return nil
        }
    }
    
    
}

let insan = Person(id: string)
insan?.id

//Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(),Dog(),Fish(),Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
