//
//  ViewController.swift
//  labtest01_101200299
//
//  Created by Bruna Bispo on 09/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtN1: UILabel!
    @IBOutlet weak var txtN2: UILabel!
    @IBOutlet weak var txtN3: UILabel!
    @IBOutlet weak var txtN4: UILabel!
    @IBOutlet weak var txtN5: UILabel!
    @IBOutlet weak var txtN6: UILabel!
    
    // Clearing all the numbers
    @IBAction func btnClear(_ sender: Any) {
        txtN1.text = "-"
        txtN2.text = "-"
        txtN3.text = "-"
        txtN4.text = "-"
        txtN5.text = "-"
        txtN6.text = "-"
    }
    
    // Displaying all the random numbers
    @IBAction func btnDraw(_ sender: Any) {
        txtN1.text = "\(randomNumber())"
        txtN2.text = "\(randomNumber())"
        txtN3.text = "\(randomNumber())"
        txtN4.text = "\(randomNumber())"
        txtN5.text = "\(randomNumber())"
        txtN6.text = "\(randomNumber())"
    }
    
    // Generating the random numbers
    func randomInt(max: Int) -> Int {
        let rand: Int = Int(arc4random())
        return (rand % max) + 1
    }
    
    func randomNumber() -> Int {
        let max: Int = 65
        let random = randomInt(max: max)
        return random
    }
}

