//
//  ViewController.swift
//  Project2-Guess the Flag
//
//  Created by Osman Murat Haslak on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var askCounter: UILabel!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countries += ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor


        askQuestion()
        sifirla()
        
    }
    
    func sifirla(action: UIAlertAction! = nil){
        score = 0
        counter = 0
        correctAnswer = 0
    }
    
    func askQuestion(action: UIAlertAction! = nil ){
        
        askCounter.text = "\(counter).Soru"
        
        if counter > 10 {
            let ac = UIAlertController(title: "Oyun Bitti!", message: "Score: \(score).", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Tamam", style: .default, handler: sifirla))
            present(ac, animated: true)
        } else {
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
            
            button1.setImage(UIImage(named: countries[0]), for: .normal)
            button2.setImage(UIImage(named: countries[1]), for: .normal)
            button3.setImage(UIImage(named: countries[2]), for: .normal)
            
            title = "\(countries[correctAnswer].uppercased()) / Score: \(score)"
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        var title:String
        var message: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            message = "Doğru cevap."
            score += 1
            counter += 1
        } else {
            title = "Wrong"
            message = "Wrong! That’s the flag of \(countries[sender.tag])"
            score -= 1
            counter += 1
        }
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    
}

