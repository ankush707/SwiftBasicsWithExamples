//
//  SelfselfDifference.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//
//Self - is Type - which in this case  is "String"
//self - is object of that type - in this case is - the vale which you have passed when use this extension

extension String {
    
    func addTwoStrings() -> Self {
        return "Welcome!!! " + self
    }
    
}



//MARK: - Example of usage of SELF and self

extension ExamplesVC {
    
    //Check ViewDidLoad of ExampleVC for the func call
    
    func selfSelfFunc() {
        print("\n --------Difference between Self & self-------- \n")
        let str = "Ankush Sharma"
        print(str.addTwoStrings())
    }
    
}
