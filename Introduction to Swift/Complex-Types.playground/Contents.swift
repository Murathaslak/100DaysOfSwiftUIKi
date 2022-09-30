import UIKit

//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john,paul,george,ringo]
beatles[1]

//Sets
let colors = Set(["red","green","blue"])
let colors2 = Set(["red","green","blue","red","blue"])

//Tuples
var name = (first: "Taylor", last: "Swift")
name.first
name.1

let word = ["One","Two","Three"]
let number = 1...3
let zipped = Array(zip(word,number))
print(zipped)

//Arrays vs sets vs tuples
//Her öğenin kesin bir adı varsa tuples kullanılmalı
//Benzersiz bir değerler koleksiyonuna ihtiyaç varsa set kullanılmalı
let adress = (house:555, street:"Taylor Swift Avenue",city:"Nashville")
let set = Set(["aardvark","astronaut","azalea"])
let pythons = ["Eric","Graham","John","Michael","Terry","Terry"]

//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeren": 1.73
]
heights["Taylor Swift"]

//Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vaniilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Osman"]
favoriteIceCream["Osman", default: "Osman Murat Haşlak"]

//Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
var resutl = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String,Int>()
var result = Array<Int>()

//Enumerations
let result4 = "failure"
let result2 = "failed"
let result3 = "fail"
enum Result {
    case success
    case failure
}
let result5 = Result.failure

//Enum associated values
enum Activity{
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volime: Int)
}
let talking = Activity.talking(topic: "Counter Strike")
let running = Activity.running(destination: "Bayburt")
let singing = Activity.singing(volime: 10)

//Enum raw values
enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)
