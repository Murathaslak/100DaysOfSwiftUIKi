import UIKit

//Arithmetic operators
let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let diff = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore

//Operator overloading
let meaninOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna"
let action = fakers + " fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//Compound assignment operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the"
quote += " Spaniards"

//Comparison operators
let ilkSayi = 6
let ikinciSayi = 4
ilkSayi == ikinciSayi
ilkSayi != secondScore
ilkSayi < ikinciSayi
ilkSayi >= ikinciSayi
"Taylor" <= "Swift"

//Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces A lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//Combining conditions
let age1 = 12
let age2 = 21

if age1 > 10 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2  > 18 {
    print("One of them is over 18")
}

//The ternary operator
let ilkKart = 11
let ikinciKart = 10

print(ilkKart == ikinciKart ? "Cards are the same" : "Cards are different")

if ilkKart == ikinciKart {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//Switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear suncreen")
default:
    print("Enjoy your day!")
}

//Range operators
let skor = 85

switch skor {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
