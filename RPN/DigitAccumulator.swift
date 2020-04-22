//
//  DigitAccumulator.swift
//  RPN
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

/// The error a digit accumulator may throw if an invalid digit is supplied.
enum DigitAccumulatorError: Error {
    case invalidNumberValue
    case extraDecimalPoint
}

/// Collects and accumulates digits into a number.
struct DigitAccumulator {
    
    var digits: [Digit] = []
    
    enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    /// Add a new digit to the accumulator. Throws an error if the digit is invalid.
    /// - Parameter digit: The digit to add.
    /// - Throws: `DigitAccumulatorError`
    mutating func add(digit: Digit) throws {
        switch digit {
        case .number(let value):
            guard value >= 0 && value <= 9 else {
                throw DigitAccumulatorError.invalidNumberValue
            }
        case .decimalPoint:
            guard !digits.contains(.decimalPoint) else {
                throw DigitAccumulatorError.extraDecimalPoint
            }
        }
        
        digits.append(digit)
    }
    
    /// The current value in the Digit Accumulator, or `nil` if it can't be interpreted as a `Double`.
    var value: Double? {
        let stringValue = digits.reduce("") { (previousResult, newDigit) -> String in
            switch newDigit {
            case .number(let value):
                return previousResult + String(value)
            case .decimalPoint:
                return previousResult + "."
            }
        }
        
        return Double(stringValue)
    }
    
    /// Reset the accumulator.
    mutating func clear() {
        digits.removeAll()
    }
    
}
