//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import UIKit
import RPN

class CalculatorViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    private let numberFormatter: NumberFormatter = {
       let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.maximumIntegerDigits = 20
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 20
        
        return formatter
    }()
    
    private var calculator = Calculator() {
        didSet {
            if let value = calculator.topValue {
                textField.text = numberFormatter.string(from: value as NSNumber)
            } else {
                textField.text = ""
            }
        }
    }
    
    private var digitAccumulator = DigitAccumulator() {
        didSet {
            if let value = digitAccumulator.value {
                textField.text = numberFormatter.string(from: value as NSNumber)
            } else {
                textField.text = ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterNumericDigit(_ sender: UIButton) {
        let numericDigit = sender.tag
        try? digitAccumulator.add(digit: .number(numericDigit))
    }
    
    @IBAction func enterDecimal(_ sender: UIButton) {
        try? digitAccumulator.add(digit: .decimalPoint)
    }
    
    @IBAction func saveNumberToCalculator(_ sender: UIButton) {
        if let value = digitAccumulator.value {
            calculator.push(value)
        }
        
        digitAccumulator.clear()
    }
    
    @IBAction func addAccumulatedResults(_ sender: UIButton) {
        calculator.push(operator: .add)
    }
    
    @IBAction func subtractAccumulatedResults(_ sender: UIButton) {
        calculator.push(operator: .subtract)
    }
    
    @IBAction func multiplyAccumulatedResults(_ sender: UIButton) {
        calculator.push(operator: .multiply)
    }
    
    @IBAction func divideAccumulatedResults(_ sender: UIButton) {
        calculator.push(operator: .divide)
    }
}

