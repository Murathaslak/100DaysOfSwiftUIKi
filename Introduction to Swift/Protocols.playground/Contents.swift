import UIKit

//Protocols
protocol Identifiable {
    var id: String { get set}
}
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}
protocol NeedsTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {
    
}

//Extensions
//Protocol sınıflarına kendi fonksiyonlarımı ekleyebilirim
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func benimFonk() {
        print("There are \(count) of us:")
        for name in self {
            print(name)
        }
    }
}
pythons.benimFonk()
beatles.benimFonk()

//Protocol-oriented programming
protocol Identifiablee {
    var id: String { get set }
    func identify()
}
extension Identifiablee {
    func identify() {
        print("My ID is \(id).")
    }
}
struct Userr: Identifiablee {
    var id: String
}

let osmanmurat = Userr(id: "MuratHaslak")
osmanmurat.identify()
