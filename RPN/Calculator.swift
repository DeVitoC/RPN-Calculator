//
//  Calculator.swift
//  RPN
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

public struct Calculator {
    
    public enum Operator {
        case add
        case subtract
        case multiply
        case divide
    }
    
    private var stack: Stack<Double> = [0, 0]
    
    public init() { }
    
    public mutating func push(_ number: Double) {
        stack.push(number)
    }
    
    public mutating func push(operator: Operator) {
        let operand1 = stack.pop() ?? 0.0
        let operand2 = stack.pop() ?? 0.0
        
        let results: Double
        
        switch `operator` {
        case .add:
            results = operand1 + operand2
        case .subtract:
            results = operand1 - operand2
        case .multiply:
            results = operand1 * operand2
        case .divide:
            results = operand1 / operand2
        }
        
        stack.push(results)
    }
    
    public var topValue: Double? {
        return stack.peek()
    }
    
    public mutating func clearStack() {
        stack = []
    }
}
