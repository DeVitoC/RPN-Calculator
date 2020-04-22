//
//  Stack.swift
//  RPN
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation


/// A simple data type for representing elements as a "stack" of things
struct Stack<Element>: ExpressibleByArrayLiteral {
    
    var elements: [Element]
    typealias ArrayLiteralElement = Element
    
    init(arrayLiteral elements: Element...) {
        self.elements = elements
    }
    
    /// Add things to the top of the stack.
    /// - Parameter element: The element to be added to the top of the stack.
    mutating func push(_ element: Element) {
        
    }
    
    /// Remove the most recent item from the stack.
    /// - Returns: The element that was removed, or `nil` if there were no elements left.
    mutating func pop() -> Element? {
        
    }
    
    /// Take a look at what the most recent element added to the stack was.
    /// - Returns: The most recent element added to the stack.
    func peek() -> Element? {
        
    }
}
