//
//  ViewController.swift
//  HEX
//
//  Created by Daniil on 7/8/18.
//  Copyright © 2018 Daniil Kistanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var display: UILabel!
    var previousValue: String?
    var currentValue: String?
    var currentAction: Action!
    var numberState: State!
    
    //ABADAE
    override func viewDidLoad() {
        let buttonIsDiabledColor: UIColor = #colorLiteral(red: 0.6546062231, green: 0.6627456546, blue: 0.6668370962, alpha: 1)
        super.viewDidLoad()
        self.numberState = .DEC
        self.display.text = "0"
        twoButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        threeButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        fourButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        fiveButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        sixButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        sevenButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        eightButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        nineButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        aButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        bButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        cButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        dButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        eButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        fButton.setTitleColor(buttonIsDiabledColor, for: .disabled)
        disableForDecimal()
    }
    
    @IBAction func zeroWasPressed(_ sender: Any) {
        if display.text != "0" {
            display.text?.append("0")
        }
    }
    
    @IBAction func oneWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("1")
        } else {
            display.text?.append("1")
        }
    }
    
    @IBAction func twoWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("2")
        } else {
            display.text?.append("2")
        }
    }
    
    @IBAction func threeWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("3")
        } else {
            display.text?.append("3")
        }
    }
    
    @IBAction func fourWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("4")
        } else {
            display.text?.append("4")
        }
    }
    
    @IBAction func fiveWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("5")
        } else {
            display.text?.append("5")
        }
    }
    
    @IBAction func sixWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("6")
        } else {
            display.text?.append("6")
        }
    }
    
    @IBAction func sevenWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("7")
        } else {
            display.text?.append("7")
        }
    }
    
    @IBAction func eightWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("8")
        } else {
            display.text?.append("8")
        }
    }
    @IBAction func nineWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("9")
        } else {
            display.text?.append("9")
        }
    }
    @IBAction func aWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("A")
        } else {
            display.text?.append("A")
        }
    }
    
    @IBAction func bWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("B")
        } else {
            display.text?.append("B")
        }
    }
    @IBAction func cWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("C")
        } else {
            display.text?.append("C")
        }
        
    }
    @IBAction func dWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("D")
        } else {
            display.text?.append("D")
        }
        
    }
    @IBAction func eWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("E")
        } else {
            display.text?.append("E")
        }
        
    }
    @IBAction func fWasPressed(_ sender: Any) {
        if display.text == "0" {
            display.text = ""
            display.text?.append("F")
        } else {
            display.text?.append("F")
        }
        
    }
    @IBAction func cancelWasPressed(_ sender: Any) {
        display.text = "0"
    }
    
    @IBAction func deleteWasPressed(_ sender: Any) {
        if var input: String = display.text {
            if input.count > 1 {
                input.removeLast()
                display.text = input
            } else {
                display.text = "0"
            }
        }
    }
    @IBAction func divideWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .divide
        display.text = ""
    }
    @IBAction func mutiplyWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .multiply
        display.text = ""
        
    }
    @IBAction func addWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .add
        display.text = ""
    }
    @IBAction func subtractWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .subtract
        display.text = ""
    }
    @IBAction func XORWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .XOR
        display.text = ""
    }
    @IBAction func MODWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .MOD
        display.text = ""
    }
    @IBAction func ORWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .OR
        display.text = ""
    }
    @IBAction func ANDWasPressed(_ sender: Any) {
        self.previousValue = display.text
        self.currentAction = .AND
        display.text = ""
    }
    @IBAction func equalsWasPressed(_ sender: Any) {
        self.currentValue = display.text
        switch self.currentAction {
        case .add:
            display.text = ""
        default:
            display.text = "Error"
        }
    }
    

    
    @IBAction func HEXWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.numberState {
        case .DEC:
            if let value = Int(input) {
                display.text = String(value, radix: 16, uppercase: true)
                self.numberState = .HEX
                enableAll()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 16, uppercase: true)
                self.numberState = .HEX
                enableAll()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 16, uppercase: true)
                self.numberState = .HEX
                enableAll()
            }
        case .HEX:
            self.numberState = .HEX
        default:
            display.text = "ERROR"
        }
    }
    @IBAction func DECWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.numberState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = "\(value)"
                self.numberState = .DEC
                disableForDecimal()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = "\(value)"
                self.numberState = .DEC
                disableForDecimal()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = "\(value)"
                self.numberState = .DEC
                disableForDecimal()
            }
        case .DEC:
            self.numberState = .DEC
        default:
            display.text = "ERROR"
        }
    
    }
    
    @IBAction func OCTWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.numberState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = String(value, radix: 8)
                self.numberState = .OCT
                disableForOctal()
            }
        case .DEC:
            if let value = Int(input) {
                display.text = String(value, radix: 8)
                self.numberState = .OCT
                disableForOctal()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 8)
                self.numberState = .OCT
                disableForOctal()
            }
        case .OCT:
            self.numberState = .OCT
        default:
            display.text = "ERROR"
        }
    }
    @IBAction func BINWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.numberState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = String(value, radix: 2)
                self.numberState = .BIN
                disableForBinary()
            }
        case .DEC:
            if let value = Int(input) {
                display.text = String(value, radix: 2)
                self.numberState = .BIN
                disableForBinary()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 2)
                self.numberState = .BIN
                disableForBinary()
            }
        case .BIN:
            self.numberState = .BIN
        default:
            display.text = "ERROR"
        }
    }
    func addValues(value_one: String, value_two: String) -> String {
        switch self.numberState {
        case .DEC:
            return  String((Int(value_one))! + Int(value_two)!).uppercased()
        case .HEX:
            return  String(Int(value_one, radix: 16)! + Int(value_two, radix: 16)!, radix: 16).uppercased()
        case .OCT:
            return  String(Int(value_one, radix: 8)! + Int(value_two, radix: 8)!, radix: 8).uppercased()
        case .BIN:
            return  String(Int(value_one, radix: 2)! + Int(value_two, radix: 2)!, radix: 2).uppercased()
        default:
            return "ERROR"
        }
    }
    func enableAll() {
        twoButton.isEnabled = true
        threeButton.isEnabled = true
        fourButton.isEnabled = true
        fiveButton.isEnabled = true
        sixButton.isEnabled = true
        sevenButton.isEnabled = true
        eightButton.isEnabled = true
        nineButton.isEnabled = true
        aButton.isEnabled = true
        bButton.isEnabled = true
        cButton.isEnabled = true
        dButton.isEnabled = true
        eButton.isEnabled = true
        fButton.isEnabled = true
    }
    func disableForDecimal() {
        enableAll()
        aButton.isEnabled = false
        bButton.isEnabled = false
        cButton.isEnabled = false
        dButton.isEnabled = false
        eButton.isEnabled = false
        fButton.isEnabled = false
    }
    func disableForOctal() {
        enableAll()
        eightButton.isEnabled = false
        nineButton.isEnabled = false
        aButton.isEnabled = false
        bButton.isEnabled = false
        cButton.isEnabled = false
        dButton.isEnabled = false
        eButton.isEnabled = false
        fButton.isEnabled = false
    }
    func disableForBinary() {
        enableAll()
        twoButton.isEnabled = false
        threeButton.isEnabled = false
        fourButton.isEnabled = false
        fiveButton.isEnabled = false
        sixButton.isEnabled = false
        sevenButton.isEnabled = false
        eightButton.isEnabled = false
        nineButton.isEnabled = false
        aButton.isEnabled = false
        bButton.isEnabled = false
        cButton.isEnabled = false
        dButton.isEnabled = false
        eButton.isEnabled = false
        fButton.isEnabled = false
    }
}

enum Action {
    case add
    case subtract
    case divide
    case multiply
    case XOR
    case OR
    case AND
    case MOD
}
enum State {
    case BIN
    case DEC
    case OCT
    case HEX
}

