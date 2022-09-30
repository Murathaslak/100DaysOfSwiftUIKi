import UIKit

//Creating your own classes
class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

//Class inheritance
class Dogg {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
class Poodle: Dogg {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//Overriding methods
class Doggg {
    func makeNoise(){
        print("Woof!")
    }
}
class Poodlee: Doggg {
    override func makeNoise() {
        print("Yip!")
    }
}
let poppyy = Poodlee()
poppyy.makeNoise()

//Final classes
final class Dogggg {
    var name: String
    var breed: String
    
    init(name: String, breed: String){
        self.name = name
        self.breed = breed
    }
}

print("------------------")

//Copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Osman Murat Haşlak"
print(singer.name)

print("------------------")

//Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting(){
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
    
}

for _ in 1...3
{
    let person = Person()
    person.printGreeting()
}

print("------------")

//Mutability
class Singerr {
    //var name = "Taylor Swift"
    let name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)
