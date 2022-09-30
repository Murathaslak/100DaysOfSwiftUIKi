import UIKit

//Creating basic closures
//Sabitleri fonksiyon olarak kullanabiliyoruz
let driving = {
    print("I'm driving in my car")
}
driving()

//Accepting parameters in a closure
let drive = { (place:String) in
    print("I'm going to \(place) in my car")
}
drive("London")

//Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Bayburt")
print(message)

//Closures as parameters
let driviing = {
    print("I'm driving in my car from Bayburt")
}
func travel(action: ()->Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driviing)

//Trailing closure syntax
func travell(action: ()-> Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travell() {
    print("I'm driving in my car")
}
travell {
    print("I'm driving in my car")
}

print("-----------------------")

//Using closures as parameters when they accept parameters
func gez(action: (String)-> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
gez{ (place: String) in
    print("I'm going to \(place) in my car")
}

print("-----------------------")


//Using closures as parameters when they return values
func yuru(action: (String) -> String ){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
yuru { (place: String )-> String in
    return "I'm going to \(place) in my car"
}

print("-----------------------")


//Shorthand parameter names
func travelll (action: (String ) -> String){
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travelll {
    "I'm going to \($0) in my car"
}

print("-----------------------")

//Closures with multiple parameters
func travellll(action: (String,Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travellll {
    "I'm going to \($0) at \($1) miles per hour."
}

print("-----------------------")

//Returning closures from functions
func travelllll() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travelllll()
result("London")

//Capturing values
func travellllll() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result1 = travellllll()
result1("London")
result1("London")
result1("London")
result1("London")

