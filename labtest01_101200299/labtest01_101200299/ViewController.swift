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
    
    @IBOutlet weak var editMaxValue: UITextField!
    
    @IBOutlet weak var btnClearCheck: UIButton!
    
    override func viewDidLoad() {
        txtN1.text = "-"
        txtN2.text = "-"
        txtN3.text = "-"
        txtN4.text = "-"
        txtN5.text = "-"
        txtN6.text = "-"
        
        btnClearCheck.isEnabled = false
        editMaxValue.keyboardType = .numberPad
    }
    
    // Clearing all the numbers
    @IBAction func btnClear(_ sender: Any) {
        viewDidLoad().self
    }
    
    // Displaying all the random numbers
    @IBAction func btnDraw(_ sender: Any) {
        txtN1.text = "\(randomNumber())"
        txtN2.text = "\(randomNumber())"
        txtN3.text = "\(randomNumber())"
        txtN4.text = "\(randomNumber())"
        txtN5.text = "\(randomNumber())"
        txtN6.text = "\(randomNumber())"
        
        btnClearCheck.isEnabled = true
    }
    
    // Generating the random numbers
    func randomInt(max: Int) -> Int {
        let rand: Int = Int(arc4random())
        return (rand % max) + 1
    }
    
    func randomNumber() -> Int {
        // By default, max is 100
        let max: Int = Int(editMaxValue.text ?? "") ?? 100
        let random = randomInt(max: max)
        return random
    }
}

