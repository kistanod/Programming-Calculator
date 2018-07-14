//
//  ViewController.swift
//  HEX
//
//  Created by Daniil on 7/8/18.
//  Copyright © 2018 Daniil Kistanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let highlightedColor: UIColor = #colorLiteral(red: 0.1940239966, green: 0.5986505747, blue: 1, alpha: 1)
    let regularButtonColor: UIColor = #colorLiteral(red: 0.8468492627, green: 0.8509765267, blue: 0.8550060391, alpha: 1)
    let regularActionButtonColor: UIColor = #colorLiteral(red: 1, green: 0.5825434923, blue: 0.01086289436, alpha: 1)
    let buttonIsDiabledColor: UIColor = #colorLiteral(red: 0.6546062231, green: 0.6627456546, blue: 0.6668370962, alpha: 1)
    let whiteColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    var actionWasCompleted: Bool!
    @IBOutlet weak var HEXStateButton: UIButton!
    @IBOutlet weak var DECStateButton: UIButton!
    @IBOutlet weak var OCTStateButton: UIButton!
    @IBOutlet weak var BINStateButton: UIButton!
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
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var MODButton: UIButton!
    @IBOutlet weak var ANDButton: UIButton!
    @IBOutlet weak var ORButton: UIButton!
    @IBOutlet weak var XORButton: UIButton!
    
    var previousValue: String! {
        didSet {
            print("\(oldValue) was changed to \(previousValue) ")
        }
    }
    var currentValue: String!
    var currentAction: Action!
    var numberState: State!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberState = .DEC
        DECStateButton.backgroundColor = highlightedColor
        display.text = "0"
        previousValue = "0"
        actionWasCompleted = false
        HEXStateButton.setTitleColor(whiteColor, for: .selected)
        DECStateButton.setTitleColor(whiteColor, for: .selected)
        OCTStateButton.setTitleColor(whiteColor, for: .selected)
        BINStateButton.setTitleColor(whiteColor, for: .selected)
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
        DECStateButton.isSelected = true
        disableForDecimal()
    }
    
    @IBAction func zeroWasPressed(_ sender: Any) {
        if display.text != "0" {
            display.text?.append("0")
        }
    }
    
    
    @IBAction func oneWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("1")
        } else {
            display.text?.append("1")
        }
    }
    
    
    @IBAction func twoWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("2")
        } else {
            display.text?.append("2")
        }
    }
    
    
    @IBAction func threeWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("3")
        } else {
            display.text?.append("3")
        }
    }
    
    
    @IBAction func fourWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("4")
        } else {
            display.text?.append("4")
        }
    }
    
    
    @IBAction func fiveWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("5")
        } else {
            display.text?.append("5")
        }
    }
    
    
    @IBAction func sixWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("6")
        } else {
            display.text?.append("6")
        }
    }
    
    
    @IBAction func sevenWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("7")
        } else {
            display.text?.append("7")
        }
    }
    
    
    @IBAction func eightWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("8")
        } else {
            display.text?.append("8")
        }
    }
    
    
    @IBAction func nineWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("9")
        } else {
            display.text?.append("9")
        }
    }
    
    
    @IBAction func aWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("A")
        } else {
            display.text?.append("A")
        }
    }
    
    
    @IBAction func bWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("B")
        } else {
            display.text?.append("B")
        }
    }
    
    
    @IBAction func cWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("C")
        } else {
            display.text?.append("C")
        }
       
    }
    
    
    @IBAction func dWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("D")
        } else {
            display.text?.append("D")
        }
        
    }
    
    
    @IBAction func eWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("E")
        } else {
            display.text?.append("E")
        }
        
    }
    
    
    @IBAction func fWasPressed(_ sender: Any) {
        if display.text == "0" || actionWasCompleted {
            actionWasCompleted = false
            display.text = ""
            display.text?.append("F")
        } else {
            display.text?.append("F")
        }
        
    }
    
    
    @IBAction func cancelWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
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
    
    
    @IBAction func NOTWasPressed(_ sender: Any) {
        previousValue = display.text
        switch numberState {
        case .HEX:
            if let num = Int(previousValue, radix: 16) {
                display.text = (String(~num, radix: 16))
            }
        case .DEC:
            if let num = Int(previousValue, radix: 10) {
                display.text = "\(~num)"
            }
        case .OCT:
            if let num = Int(previousValue, radix: 8) {
                display.text = (String(~num, radix: 8))
            }
        case .BIN:
            if let num = Int(previousValue, radix: 2) {
                display.text = String(~num, radix: 2)
            }
        default:
            display.text = "ERROR"
        }
    }
    
    
    @IBAction func NEGWasPressed(_ sender: Any) {
        previousValue = display.text
        switch numberState {
        case .HEX:
            if let num = Int(previousValue, radix: 16) {
                display.text = (String(num * -1, radix: 16))
            }
        case .DEC:
            if let num = Int(previousValue, radix: 10) {
                display.text = "\(num * -1)"
            }
        case .OCT:
            if let num = Int(previousValue, radix: 8) {
                display.text = (String(num * -1, radix: 8))
            }
        case .BIN:
            if let num = Int(previousValue, radix: 2) {
                display.text = String(num * -1, radix: 2)
            }
        default:
            display.text = "ERROR"
        }
    }
    
    
    @IBAction func divideWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        divideButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .divide
        display.text = "0"
    }
    
    
    @IBAction func mutiplyWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        multiplyButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .multiply
        display.text = "0"
        
    }
    
    
    @IBAction func addWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        addButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .add
        display.text = "0"
    }
    
    
    @IBAction func subtractWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        subtractButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .subtract
        display.text = "0"
    }
    
    
    @IBAction func XORWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        XORButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .XOR
        display.text = "0"
    }
    
    
    @IBAction func MODWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        MODButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .MOD
        display.text = "0"
    }
    
    
    @IBAction func ORWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        ORButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .OR
        display.text = "0"
    }
    
    
    @IBAction func ANDWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        ANDButton.backgroundColor = highlightedColor
        previousValue = display.text
        currentAction = .AND
        display.text = "0"
    }
    
    
    @IBAction func equalsWasPressed(_ sender: Any) {
        dehighlightAllActionButtons()
        currentValue = display.text
        switch currentAction {
        case .add:
            display.text = addValues(valueOne: previousValue, valueTwo: currentValue)
        case .subtract:
            display.text = subtractValues(valueOne: previousValue, valueTwo: currentValue)
        case .divide:
            display.text = divideValues(valueOne: previousValue, valueTwo: currentValue)
        case .multiply:
            display.text = multiplyValues(valueOne: previousValue, valueTwo: currentValue)
        case .AND:
            display.text = ANDValues(valueOne: previousValue, valueTwo: currentValue)
        case .OR:
            display.text = ORValues(valueOne: previousValue, valueTwo: currentValue)
        case .XOR:
            display.text = XORValues(valueOne: previousValue, valueTwo: currentValue)
        case .MOD:
            display.text = MODValues(valueOne: previousValue, valueTwo: currentValue)
        default:
            display.text = "Error"
        }
        actionWasCompleted = true
    }
    

    //
    @IBAction func HEXWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch numberState {
        case .DEC:
            if let value = Int(input, radix: 10) {
                display.text = String(value, radix: 16, uppercase: true)
                previousValue = String(Int(previousValue, radix: 10)!, radix: 16, uppercase: true)
                numberState = .HEX
                DECStateButton.backgroundColor = regularButtonColor
                DECStateButton.isSelected = false
                HEXStateButton.backgroundColor = highlightedColor
                HEXStateButton.isSelected = true
                enableAll()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 16, uppercase: true)
                previousValue = String(Int(previousValue, radix: 8)!, radix: 16, uppercase: true)
                numberState = .HEX
                OCTStateButton.backgroundColor = regularButtonColor
                OCTStateButton.isSelected = false
                HEXStateButton.backgroundColor = highlightedColor
                HEXStateButton.isSelected = true
                enableAll()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 16, uppercase: true)
                previousValue = String(Int(previousValue, radix: 2)!, radix: 16, uppercase: true)
                numberState = .HEX
                BINStateButton.backgroundColor = regularButtonColor
                BINStateButton.isSelected = false
                HEXStateButton.backgroundColor = highlightedColor
                HEXStateButton.isSelected = true
                enableAll()
            }
        case .HEX:
            numberState = .HEX
        default:
            display.text = "ERROR"
        }
    }
    
    
    @IBAction func DECWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch numberState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = "\(value)"
                previousValue = "\(String(Int(previousValue, radix: 16)!))"
                numberState = .DEC
                HEXStateButton.backgroundColor = regularButtonColor
                HEXStateButton.isSelected = false
                DECStateButton.backgroundColor = highlightedColor
                DECStateButton.isSelected = true
                disableForDecimal()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = "\(value)"
                previousValue = "\(String(Int(previousValue, radix: 8)!))"
                numberState = .DEC
                OCTStateButton.backgroundColor = regularButtonColor
                OCTStateButton.isSelected = false
                DECStateButton.backgroundColor = highlightedColor
                DECStateButton.isSelected = true
                disableForDecimal()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = "\(value)"
                previousValue = "\(String(Int(previousValue, radix: 2)!))"
                numberState = .DEC
                BINStateButton.backgroundColor = regularButtonColor
                BINStateButton.isSelected = false
                DECStateButton.backgroundColor = highlightedColor
                DECStateButton.isSelected = true
                disableForDecimal()
            }
        case .DEC:
            numberState = .DEC
        default:
            display.text = "ERROR"
        }
    
    }
    
    
    @IBAction func OCTWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch numberState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = String(value, radix: 8)
                previousValue = String(Int(previousValue, radix: 16)!, radix: 8)
                numberState = .OCT
                HEXStateButton.backgroundColor = regularButtonColor
                HEXStateButton.isSelected = false
                OCTStateButton.backgroundColor = highlightedColor
                OCTStateButton.isSelected = true
                disableForOctal()
            }
        case .DEC:
            if let value = Int(input, radix: 10) {
                display.text = String(value, radix: 8)
                previousValue = String(Int(previousValue, radix: 10)!, radix: 8)
                numberState = .OCT
                DECStateButton.backgroundColor = regularButtonColor
                DECStateButton.isSelected = false
                OCTStateButton.backgroundColor = highlightedColor
                OCTStateButton.isSelected = true
                disableForOctal()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 8)
                previousValue = String(Int(previousValue, radix: 2)!, radix: 8)
                numberState = .OCT
                BINStateButton.backgroundColor = regularButtonColor
                BINStateButton.isSelected = false
                OCTStateButton.backgroundColor = highlightedColor
                OCTStateButton.isSelected = true
                disableForOctal()
            }
        case .OCT:
            numberState = .OCT
        default:
            display.text = "ERROR"
        }
    }
    
    
    @IBAction func BINWasPressed(_ sender: Any) {
        let input: String = display.text!
        switch numberState {
        case .HEX:
            if let value = Int(input, radix: 16) {
                display.text = String(value, radix: 2)
                previousValue = String(Int(previousValue, radix: 16)!, radix: 2)
                numberState = .BIN
                HEXStateButton.backgroundColor = regularButtonColor
                HEXStateButton.isSelected = false
                BINStateButton.backgroundColor = highlightedColor
                BINStateButton.isSelected = true
                disableForBinary()
            }
        case .DEC:
            if let value = Int(input, radix: 10) {
                display.text = String(value, radix: 2)
                previousValue = String(Int(previousValue, radix: 10)!, radix: 2)
                numberState = .BIN
                DECStateButton.backgroundColor = regularButtonColor
                DECStateButton.isSelected = false
                BINStateButton.backgroundColor = highlightedColor
                BINStateButton.isSelected = true
                disableForBinary()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 2)
                previousValue = String(Int(previousValue, radix: 8)!, radix: 2)
                numberState = .BIN
                OCTStateButton.backgroundColor = regularButtonColor
                OCTStateButton.isSelected = false
                BINStateButton.backgroundColor = highlightedColor
                BINStateButton.isSelected = true
                disableForBinary()
            }
        case .BIN:
            numberState = .BIN
        default:
            display.text = "ERROR"
        }
        
    }
    
    
    func addValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(valueOne), let two = Int(valueTwo) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 2)
                } else {
                    return "OVERFLOW"
                }
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func subtractValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 2)
                } else {
                    return "OVERFLOW"
                }
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func divideValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 2)
                } else {
                    return "OVERFLOW"
                }
            }
        default:
            return "ERROR"
        }
       return "ERROR"
    }
    
    
    func multiplyValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 2)
                } else {
                    return "OVERFLOW"
                }
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func ANDValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                return String(one & two, radix: 16, uppercase: true)
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                return String(one & two, radix: 10, uppercase: true)
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                return String(one & two, radix: 8, uppercase: true)
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                return String(one & two, radix: 2, uppercase: true)
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func ORValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                return String(one | two, radix: 16, uppercase: true)
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                return String(one | two, radix: 10, uppercase: true)
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                return String(one | two, radix: 8, uppercase: true)
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                return String(one | two, radix: 8, uppercase: true)
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func XORValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                return String(one ^ two, radix: 16, uppercase: true)
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                return String(one ^ two, radix: 10, uppercase: true)
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                return String(one ^ two, radix: 8, uppercase: true)
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                return String(one ^ two, radix: 2, uppercase: true)
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func MODValues(valueOne: String, valueTwo: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(valueOne, radix: 16), let two = Int(valueTwo, radix: 16) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase:true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(valueOne, radix: 10), let two = Int(valueTwo, radix: 10) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(valueOne, radix: 8), let two = Int(valueTwo, radix: 8) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(valueOne, radix: 2), let two = Int(valueTwo, radix: 2) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 2)
                } else {
                    return "OVERFLOW"
                }
            }
        default:
            return "ERROR"
        }
        return "ERROR"
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
    func dehighlightAllActionButtons() {
        addButton.backgroundColor = regularActionButtonColor
        subtractButton.backgroundColor = regularActionButtonColor
        multiplyButton.backgroundColor = regularActionButtonColor
        divideButton.backgroundColor = regularActionButtonColor
        ANDButton.backgroundColor = regularActionButtonColor
        ORButton.backgroundColor = regularActionButtonColor
        XORButton.backgroundColor = regularActionButtonColor
        MODButton.backgroundColor = regularActionButtonColor
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

