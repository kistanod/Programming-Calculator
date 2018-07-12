//
//  ViewController.swift
//  HEX
//
//  Created by Daniil on 7/8/18.
//  Copyright © 2018 Daniil Kistanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
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
    var currentState: State!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentState = .DEC
        self.display.text = ""
    }
    
    @IBAction func zeroWasPressed(_ sender: Any) {
        if display.text != "0" {
            display.text?.append("0")
        }
    }
    
    @IBAction func oneWasPressed(_ sender: Any) {
        display.text?.append("1")
    }
    
    @IBAction func twoWasPressed(_ sender: Any) {
        display.text?.append("2")
    }
    
    @IBAction func threeWasPressed(_ sender: Any) {
        display.text?.append("3")
    }
    
    @IBAction func fourWasPressed(_ sender: Any) {
        display.text?.append("4")
    }
    
    @IBAction func fiveWasPressed(_ sender: Any) {
        display.text?.append("5")
    }
    
    @IBAction func sixWasPressed(_ sender: Any) {
        display.text?.append("6")
    }
    
    @IBAction func sevenWasPressed(_ sender: Any) {
        display.text?.append("7")
    }
    
    @IBAction func eightWasPressed(_ sender: Any) {
        display.text?.append("8")
    }
    @IBAction func nineWasPressed(_ sender: Any) {
        display.text?.append("9")
    }
    @IBAction func aWasPressed(_ sender: Any) {
        display.text?.append("A")
    }
    
    @IBAction func bWasPressed(_ sender: Any) {
        display.text?.append("B")
    }
    @IBAction func cWasPressed(_ sender: Any) {
        display.text?.append("C")
        
    }
    @IBAction func dWasPressed(_ sender: Any) {
        display.text?.append("D")
        
    }
    @IBAction func eWasPressed(_ sender: Any) {
        display.text?.append("E")
        
    }
    @IBAction func fWasPressed(_ sender: Any) {
        display.text?.append("F")
        
    }
    @IBAction func cancelWasPressed(_ sender: Any) {
        display.text = ""
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
    
    //number is DEC "12345"
    //convert DEC to -> HEX OCT BIN
    
    @IBAction func HEXWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.currentState {
        case .DEC:
            if let value = Int(input) {
                display.text = String(value, radix: 16, uppercase: true)
                self.currentState = .HEX
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 16, uppercase: true)
                self.currentState = .HEX
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 16, uppercase: true)
                self.currentState = .HEX
            }
        case .HEX:
            self.currentState = .HEX
        default:
            display.text = "ERROR"
        }
    }
    @IBAction func DECWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.currentState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = "\(value)"
                self.currentState = .DEC
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = "\(value)"
                self.currentState = .DEC
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = "\(value)"
                self.currentState = .DEC
            }
        case .DEC:
            self.currentState = .DEC
        default:
            display.text = "ERROR"
        }
    
    }
    
    @IBAction func OCTWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.currentState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = String(value, radix: 8)
                self.currentState = .OCT
            }
        case .DEC:
            if let value = Int(input) {
                display.text = String(value, radix: 8)
                self.currentState = .OCT
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 8)
                self.currentState = .OCT
            }
        case .OCT:
            self.currentState = .OCT
        default:
            display.text = "ERROR"
        }
    }
    @IBAction func BINWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch self.currentState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = String(value, radix: 2)
                self.currentState = .BIN
            }
        case .DEC:
            if let value = Int(input) {
                display.text = String(value, radix: 2)
                self.currentState = .BIN
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 2)
                self.currentState = .BIN
            }
        case .BIN:
            self.currentState = .BIN
        default:
            display.text = "ERROR"
        }
    }
    func addValues(value_one: String, value_two: String) -> String {
        switch self.currentState {
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
    
    
    /*
    func subtractValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
    }
    func divideValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
    }
    func multiplyValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
    }
    func XORValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
    }
    func MODValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
            
    }
    func MODValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
            
    }
    func ORValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
        
    }
    func ANDValues(value_one: String, value_two: String) -> String {
        switch self.currectState {
        case .DEC:
        case .HEX:
        case .OCT:
        case .BIN:
        }
    }
 */
        
    
    
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

