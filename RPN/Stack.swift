//
//  Stack.swift
//  RPN
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import Foundation

struct Stack<Element>: ExpressibleByArrayLiteral {
    
    var elements: [Element]
    typealias ArrayLiteralElement = Element
    
    internal init(elements: [Element]) {
        self.elements = elements
    }
    
    mutating func push(_ element: Element) {
        
    }
    
    mutating func pop() -> Element? {
        
    }
    
    func peek() -> Element? {
        
    }
}
