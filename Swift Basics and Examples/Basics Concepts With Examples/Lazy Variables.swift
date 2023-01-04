//
//  Lazy Variables.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

//LAZY VARIABLES: - These variables are created using a function you specify only when that variable is first requested. If it's never requested, the function is never run, so it does help save processing time.

class LazyVariables {
    
    var array: [Int] = [1, 4, 5, 7, 12, 23]
    
    lazy var lazyVar: Int = {
        array.reduce(0, { partialResult, obj in
                partialResult + obj
            })
        
    }()
    
}

extension ExamplesVC {
    
    func lazyVariablesFunc() {
        print("\n --------LAZY VARIABLES-------- \n")
        //Here class obj is initialized But lazyVar value will only will calculated by reduce function when it is being called.
        let lazyClassObj = LazyVariables()
        print(lazyClassObj)
        print(lazyClassObj.array)
        //lazyVar value will only will calculated by reduce function when it is being called.
        print(lazyClassObj.lazyVar)
    }
}
