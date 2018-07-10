//
//  ViewController.swift
//  HEX
//
//  Created by Daniil on 7/8/18.
//  Copyright © 2018 Daniil Kistanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var previousValue: Any!
    var  currentValue: Any!
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func zeroWasPressed(_ sender: Any) {
        if display.text != "0" {
            display.text?.append("0")
        }
    }
    @IBOutlet weak var cButton: UIButton!
    
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


}

