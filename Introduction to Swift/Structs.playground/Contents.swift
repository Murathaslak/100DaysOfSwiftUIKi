import UIKit

//Creating your own structs
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Voleybol"
print(tennis.name)

//Computed properties
struct Sport1 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers
//willSet ve didSet olmak üzere iki tane property observerımız var.
//willSet propertynin değeri değişmeden hemen önce çalışır
//didSet ise değeri değiştikten sonra çalışır.
struct Progress {
    var task: String
    var amount: Int {
        willSet {
            print("Anlık \(task) değeri \(amount).")
        }
        didSet {
            print("\(task) is now \(amount)")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//Methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 100)
london.collectTaxes()

//Mutating methods
//mutating -> Genellikle struct içerisinde kullanılır.
//Bu özellik sayesinde Struct içerisindeki varlıkları değiştirme imkanına sahip oluyoruz. Modele müdahale ediyoruz.
struct Person {
    var name: String
    
    mutating func makeAnonymous(){
        name = "Anonymous"
    }
}
var person = Person(name: "Osman Murat Haşlak")
person.name
person.makeAnonymous()
person.name


//Properties and methods of strings
//hasPrefix -> İstenen string ile başlıyorsa true döner
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

//Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
    
}
var user = User()
user.username = "Osman Murat"
print(user.username)

//Referring to the current instance
struct Personn {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

let murat = Personn(name: "Osman Murat Haşlak")

print("-------------------------")

//Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Personnn {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}
var ed = Personnn(name: "Ed")
ed.familyTree

print("------------------")

//Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    init(name:String) {
        self.name = name
        Student.classSize += 1
    }
}
let osman = Student(name: "Osman")
let murat1 = Student(name: "Murat")
print(Student.classSize)

//Access control
struct Personnnn {
    private var id: String
    
    init(id: String){
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
    
}
let ed1 = Personnnn(id: "12345")
//ed1.id
ed1.identify()
