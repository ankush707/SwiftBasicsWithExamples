//
//  Defer Keyword.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension ExamplesVC {
    
    func deferImplementation() {
        
        print("\n --------DEFER STATEMENT EXAMPLE-------- \n")
        
        let firstVar = "Object inside defer "
        let secondVar = "is this one."
        
        //This statement will be called at the end of the scope of function
        defer {
            
            print(firstVar + " " + secondVar)
        }
        
        for obj in 0..<10 {
            print("\(obj). Variable of loop : \(obj*2)")
        }
        
        
    }
}
