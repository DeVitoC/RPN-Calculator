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
    
    enum Digit: Equatable {
        case decimalPoint
        case number(Int)
    }
    
    /// Add a new digit to the accumulator. Throws an error if the digit is invalid.
    /// - Parameter digit: The digit to add.
    /// - Throws: `DigitAccumulatorError`
    mutating func add(digit: Digit) throws {
        
    }
    
    /// The current value in the Digit Accumulator, or `nil` if it can't be interpreted as a `Double`.
    var value: Double? {
        
    }
    
    /// Reset the accumulator.
    mutating func clear() {
        
    }
    
}
