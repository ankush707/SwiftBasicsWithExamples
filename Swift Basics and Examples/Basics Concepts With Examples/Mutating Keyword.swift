//
//  MutatingKeyword.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//multating struct creation
struct MutatingStruct {
    
    
    var array : [Int] = []
    
    mutating func pushValueIntoArray(_ item: Int) {
        array.append(item)
    }
    
    mutating func popValueOutOfArray() {
        if !array.isEmpty {
            array.removeLast()
        }
    }
}

//MARK: - Example of multating struct
extension ExamplesVC {
    
    func mutatingExample() {
        
        print("\n --------MUTATING STRUCT EXAMPLE-------- \n")
        var obj = MutatingStruct()
        
        obj.array.append(34)
        obj.array.append(29)
        obj.array.append(12)
        obj.array.append(33)
        
        print(obj.array)
        obj.popValueOutOfArray()
        print(obj.array)
        
    }
    
}
