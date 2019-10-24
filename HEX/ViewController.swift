import UIKit

class ViewController: UIViewController {
    
    
    let highlightedButtonColor: UIColor = #colorLiteral(red: 0.1940239966, green: 0.5986505747, blue: 1, alpha: 1)
    let regularButtonColor: UIColor = #colorLiteral(red: 0.8468492627, green: 0.8509765267, blue: 0.8550060391, alpha: 1)
    let regularActionButtonColor: UIColor = #colorLiteral(red: 1, green: 0.5825434923, blue: 0.01086289436, alpha: 1)
    let buttonIsDiabledColor: UIColor = #colorLiteral(red: 0.6546062231, green: 0.6627456546, blue: 0.6668370962, alpha: 1)
    let whiteColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    var actionWasCompleted: Bool! = false
    var firstValue: String!
    var secondValue: String!
    var currentAction: Action!
    var numberState: State!
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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberState = .DEC
        DECStateButton.backgroundColor = highlightedButtonColor
        display.text = "0"
        firstValue = "0"
        setColorsForTitles()
        DECStateButton.isSelected = true
        disallowInteractionForDecimalState()
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
        dehighlightActionButtons()
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
        firstValue = display.text
        switch numberState {
        case .HEX:
            if let num = Int(firstValue, radix: 16) {
                display.text = (String(~num, radix: 16))
            }
        case .DEC:
            if let num = Int(firstValue, radix: 10) {
                display.text = "\(~num)"
            }
        case .OCT:
            if let num = Int(firstValue, radix: 8) {
                display.text = (String(~num, radix: 8))
            }
        case .BIN:
            if let num = Int(firstValue, radix: 2) {
                display.text = String(~num, radix: 2)
            }
        default:
            display.text = "ERROR"
        }
    }
    
    
    @IBAction func NEGWasPressed(_ sender: Any) {
        firstValue = display.text
        switch numberState {
        case .HEX:
            if let num = Int(firstValue, radix: 16) {
                display.text = (String(num * -1, radix: 16))
            }
        case .DEC:
            if let num = Int(firstValue, radix: 10) {
                display.text = "\(num * -1)"
            }
        case .OCT:
            if let num = Int(firstValue, radix: 8) {
                display.text = (String(num * -1, radix: 8))
            }
        case .BIN:
            if let num = Int(firstValue, radix: 2) {
                display.text = String(num * -1, radix: 2)
            }
        default:
            display.text = "ERROR"
        }
    }
    
    
    @IBAction func divideWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        divideButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .divide
        display.text = "0"
    }
    
    
    @IBAction func mutiplyWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        multiplyButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .multiply
        display.text = "0"
        
    }
    
    
    @IBAction func addWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        addButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .add
        display.text = "0"
    }
    
    
    @IBAction func subtractWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        subtractButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .subtract
        display.text = "0"
    }
    
    
    @IBAction func XORWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        XORButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .XOR
        display.text = "0"
    }
    
    
    @IBAction func MODWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        MODButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .MOD
        display.text = "0"
    }
    
    
    @IBAction func ORWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        ORButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .OR
        display.text = "0"
    }
    
    
    @IBAction func ANDWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        ANDButton.backgroundColor = highlightedButtonColor
        firstValue = display.text
        currentAction = .AND
        display.text = "0"
    }
    
    
    @IBAction func equalsWasPressed(_ sender: Any) {
        dehighlightActionButtons()
        secondValue = display.text
        switch currentAction {
        case .add:
            display.text = add(firstValue: firstValue, secondValue: secondValue)
        case .subtract:
            display.text = subtract(firstValue: firstValue, secondValue: secondValue)
        case .divide:
            display.text = divide(firstValue: firstValue, secondValue: secondValue)
        case .multiply:
            display.text = multiply(firstValue: firstValue, secondValue: secondValue)
        case .AND:
            display.text = completeAndAction(firstValue: firstValue, secondValue: secondValue)
        case .OR:
            display.text = completeOrAction(firstValue: firstValue, secondValue: secondValue)
        case .XOR:
            display.text = CompleteXorAction(firstValue: firstValue, secondValue: secondValue)
        case .MOD:
            display.text = calculateModulo(firstValue: firstValue, secondValue: secondValue)
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
                firstValue = String(Int(firstValue, radix: 10)!, radix: 16, uppercase: true)
                numberState = .HEX
                DECStateButton.backgroundColor = regularButtonColor
                DECStateButton.isSelected = false
                HEXStateButton.backgroundColor = highlightedButtonColor
                HEXStateButton.isSelected = true
                enableInteractionForAllButtons()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 16, uppercase: true)
                firstValue = String(Int(firstValue, radix: 8)!, radix: 16, uppercase: true)
                numberState = .HEX
                OCTStateButton.backgroundColor = regularButtonColor
                OCTStateButton.isSelected = false
                HEXStateButton.backgroundColor = highlightedButtonColor
                HEXStateButton.isSelected = true
                enableInteractionForAllButtons()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 16, uppercase: true)
                firstValue = String(Int(firstValue, radix: 2)!, radix: 16, uppercase: true)
                numberState = .HEX
                BINStateButton.backgroundColor = regularButtonColor
                BINStateButton.isSelected = false
                HEXStateButton.backgroundColor = highlightedButtonColor
                HEXStateButton.isSelected = true
                enableInteractionForAllButtons()
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
                firstValue = "\(String(Int(firstValue, radix: 16)!))"
                numberState = .DEC
                HEXStateButton.backgroundColor = regularButtonColor
                HEXStateButton.isSelected = false
                DECStateButton.backgroundColor = highlightedButtonColor
                DECStateButton.isSelected = true
                disallowInteractionForDecimalState()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = "\(value)"
                firstValue = "\(String(Int(firstValue, radix: 8)!))"
                numberState = .DEC
                OCTStateButton.backgroundColor = regularButtonColor
                OCTStateButton.isSelected = false
                DECStateButton.backgroundColor = highlightedButtonColor
                DECStateButton.isSelected = true
                disallowInteractionForDecimalState()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = "\(value)"
                firstValue = "\(String(Int(firstValue, radix: 2)!))"
                numberState = .DEC
                BINStateButton.backgroundColor = regularButtonColor
                BINStateButton.isSelected = false
                DECStateButton.backgroundColor = highlightedButtonColor
                DECStateButton.isSelected = true
                disallowInteractionForDecimalState()
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
                firstValue = String(Int(firstValue, radix: 16)!, radix: 8)
                numberState = .OCT
                HEXStateButton.backgroundColor = regularButtonColor
                HEXStateButton.isSelected = false
                OCTStateButton.backgroundColor = highlightedButtonColor
                OCTStateButton.isSelected = true
                disallowInteractionForOctalState()
            }
        case .DEC:
            if let value = Int(input, radix: 10) {
                display.text = String(value, radix: 8)
                firstValue = String(Int(firstValue, radix: 10)!, radix: 8)
                numberState = .OCT
                DECStateButton.backgroundColor = regularButtonColor
                DECStateButton.isSelected = false
                OCTStateButton.backgroundColor = highlightedButtonColor
                OCTStateButton.isSelected = true
                disallowInteractionForOctalState()
            }
        case .BIN:
            if let value = Int(input, radix: 2) {
                display.text = String(value, radix: 8)
                firstValue = String(Int(firstValue, radix: 2)!, radix: 8)
                numberState = .OCT
                BINStateButton.backgroundColor = regularButtonColor
                BINStateButton.isSelected = false
                OCTStateButton.backgroundColor = highlightedButtonColor
                OCTStateButton.isSelected = true
                disallowInteractionForOctalState()
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
                firstValue = String(Int(firstValue, radix: 16)!, radix: 2)
                numberState = .BIN
                HEXStateButton.backgroundColor = regularButtonColor
                HEXStateButton.isSelected = false
                BINStateButton.backgroundColor = highlightedButtonColor
                BINStateButton.isSelected = true
                disallowInteractionForBinaryState()
            }
        case .DEC:
            if let value = Int(input, radix: 10) {
                display.text = String(value, radix: 2)
                firstValue = String(Int(firstValue, radix: 10)!, radix: 2)
                numberState = .BIN
                DECStateButton.backgroundColor = regularButtonColor
                DECStateButton.isSelected = false
                BINStateButton.backgroundColor = highlightedButtonColor
                BINStateButton.isSelected = true
                disallowInteractionForBinaryState()
            }
        case .OCT:
            if let value = Int(input, radix: 8) {
                display.text = String(value, radix: 2)
                firstValue = String(Int(firstValue, radix: 8)!, radix: 2)
                numberState = .BIN
                OCTStateButton.backgroundColor = regularButtonColor
                OCTStateButton.isSelected = false
                BINStateButton.backgroundColor = highlightedButtonColor
                BINStateButton.isSelected = true
                disallowInteractionForBinaryState()
            }
        case .BIN:
            numberState = .BIN
        default:
            display.text = "ERROR"
        }
        
    }
    
    
    func add(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(firstValue), let two = Int(secondValue) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                let result = one.addingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
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
    
    
    func subtract(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                let result = one.subtractingReportingOverflow(two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
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
    
    
    func divide(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                let result = one.dividedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
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
    
    
    func multiply(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase: true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                let result = one.multipliedReportingOverflow(by: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
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
    
    
    func completeAndAction(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                return String(one & two, radix: 16, uppercase: true)
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                return String(one & two, radix: 10, uppercase: true)
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                return String(one & two, radix: 8, uppercase: true)
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
                return String(one & two, radix: 2, uppercase: true)
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func completeOrAction(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                return String(one | two, radix: 16, uppercase: true)
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                return String(one | two, radix: 10, uppercase: true)
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                return String(one | two, radix: 8, uppercase: true)
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
                return String(one | two, radix: 8, uppercase: true)
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func CompleteXorAction(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                return String(one ^ two, radix: 16, uppercase: true)
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                return String(one ^ two, radix: 10, uppercase: true)
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                return String(one ^ two, radix: 8, uppercase: true)
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
                return String(one ^ two, radix: 2, uppercase: true)
            }
        default:
            return "ERROR"
        }
        return "ERROR"
    }
    
    
    func calculateModulo(firstValue: String, secondValue: String) -> String {
        switch numberState {
        case .HEX:
            if let one = Int(firstValue, radix: 16), let two = Int(secondValue, radix: 16) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 16, uppercase:true)
                } else {
                    return "OVERFLOW"
                }
            }
        case .DEC:
            if let one = Int(firstValue, radix: 10), let two = Int(secondValue, radix: 10) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return "\(result.partialValue)"
                } else {
                    return "OVERFLOW"
                }
            }
        case .OCT:
            if let one = Int(firstValue, radix: 8), let two = Int(secondValue, radix: 8) {
                let result = one.remainderReportingOverflow(dividingBy: two)
                if !result.overflow {
                    return String(result.partialValue, radix: 8)
                } else {
                    return "OVERFLOW"
                }
            }
        case .BIN:
            if let one = Int(firstValue, radix: 2), let two = Int(secondValue, radix: 2) {
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
    
    
    func enableInteractionForAllButtons() {
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
    
    
    func disallowInteractionForDecimalState() {
        enableInteractionForAllButtons()
        aButton.isEnabled = false
        bButton.isEnabled = false
        cButton.isEnabled = false
        dButton.isEnabled = false
        eButton.isEnabled = false
        fButton.isEnabled = false
    }
    
    
    func disallowInteractionForOctalState() {
        enableInteractionForAllButtons()
        eightButton.isEnabled = false
        nineButton.isEnabled = false
        aButton.isEnabled = false
        bButton.isEnabled = false
        cButton.isEnabled = false
        dButton.isEnabled = false
        eButton.isEnabled = false
        fButton.isEnabled = false
    }
    
    
    func disallowInteractionForBinaryState() {
        enableInteractionForAllButtons()
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
    func dehighlightActionButtons() {
        addButton.backgroundColor = regularActionButtonColor
        subtractButton.backgroundColor = regularActionButtonColor
        multiplyButton.backgroundColor = regularActionButtonColor
        divideButton.backgroundColor = regularActionButtonColor
        ANDButton.backgroundColor = regularActionButtonColor
        ORButton.backgroundColor = regularActionButtonColor
        XORButton.backgroundColor = regularActionButtonColor
        MODButton.backgroundColor = regularActionButtonColor
    }
    func setColorsForTitles() {
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
