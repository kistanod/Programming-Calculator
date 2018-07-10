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
    var previousValue: String!
    var currentValue: String!
    var currentAction: Action!
    var currentState: State!
    
    func addBorders() {
        self.aButton.layer.borderWidth = 0.1
        self.bButton.layer.borderWidth = 0.1
        self.cButton.layer.borderWidth = 0.1
        self.dButton.layer.borderWidth = 0.1
        self.eButton.layer.borderWidth = 0.1
        self.fButton.layer.borderWidth = 0.1
        self.oneButton.layer.borderWidth = 0.1
        self.twoButton.layer.borderWidth = 0.1
        self.threeButton.layer.borderWidth = 0.1
        self.fourButton.layer.borderWidth = 0.1
        self.fiveButton.layer.borderWidth = 0.1
        self.sixButton.layer.borderWidth = 0.1
        self.sevenButton.layer.borderWidth = 0.1
        self.eightButton.layer.borderWidth = 0.1
        self.nineButton.layer.borderWidth = 0.1
        
    }
    /*
    func roundButtons() {
        let radiusValue: CGFloat = 0.15 * self.oneButton.bounds.size.width
        //self.oneButton.layer.cornerRadius =  radiusValue
        self.oneButton.bounds.size.width = self.oneButton.bounds.size.width*0.9
        self.oneButton.bounds.size.width = self.oneButton.bounds.size.height*0.9
        self.twoButton.layer.cornerRadius =  radiusValue
        self.threeButton.layer.cornerRadius =  radiusValue
        self.fourButton.layer.cornerRadius =  radiusValue
        self.fiveButton.layer.cornerRadius =  radiusValue
        self.sixButton.layer.cornerRadius =  radiusValue
        self.sevenButton.layer.cornerRadius =  radiusValue
        self.eightButton.layer.cornerRadius =  radiusValue
        self.nineButton.layer.cornerRadius =  radiusValue
        self.aButton.layer.cornerRadius =  radiusValue
        self.bButton.layer.cornerRadius =  radiusValue
        self.cButton.layer.cornerRadius =  radiusValue
        self.dButton.layer.cornerRadius =  radiusValue
        self.eButton.layer.cornerRadius =  radiusValue
        self.fButton.layer.cornerRadius =  radiusValue
    }
 */

    override func viewDidLoad() {
        super.viewDidLoad()
        self.currentState = .DEC
        addBorders()
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
            display.text = addValues(value_one: self.previousValue, value_two: self.currentValue)
        default:
            display.text = "Error"
        }
    }
    
    @IBAction func HEXWasPressed(_ sender: Any) {
        if !(display.text?.isEmpty)! {
            let toConvert: String? = display.text
            let number: Int? = Int(toConvert!, radix: 16)
            switch self.currentState {
            case .DEC:
                display.text = "\(String(describing: number))"
            case .OCT:
                display.text = String(number!, radix: 8)
            case .BIN:
                display.text = String(number!, radix: 2)
            default:
                display.text = toConvert
            }
        }
        self.currentState = .HEX  
    }
    @IBAction func DECWasPressed(_ sender: Any) {
        if !(display.text?.isEmpty)! {
            let number: Int? = Int(display.text!)
            switch self.currentState {
            case .HEX:
                display.text = String(number!, radix: 16)
            case .OCT:
                display.text = String(number!, radix: 8)
            case .BIN:
                display.text = String(number!, radix: 2)
            default:
                display.text = "\(String(describing: number))"
            }
        }
        self.currentState = .DEC
    }
    @IBAction func OCTWasPressed(_ sender: Any) {
        if !(display.text?.isEmpty)! {
            let toConvert: String? = display.text
            let number: Int?  = Int(toConvert!, radix: 8)
            switch self.currentState {
            case .HEX:
                display.text = String(number!, radix: 16)
            case .DEC:
                display.text = "\(String(describing: number))"
            case .BIN:
                display.text = String(number!, radix: 2)
            default:
                display.text = toConvert
            }
        }
        self.currentState = .OCT
    }
    @IBAction func BINWasPressed(_ sender: Any) {
        if !(display.text?.isEmpty)! {
            let toConvert: String? = display.text
            let number: Int?  = Int(toConvert!, radix: 2)
            switch self.currentState {
            case .HEX:
                display.text = String(number!, radix: 16)
            case .DEC:
                display.text = "\(String(describing: number))"
            case .OCT:
                display.text = String(number!, radix: 8)
            default:
                display.text = toConvert
            }
        }
        self.currentState = .BIN
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

