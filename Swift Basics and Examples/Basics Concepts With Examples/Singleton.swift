//
//  Singleton.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//Singleton is a design pattern that ensures a class can have only one object. Such a class is called singleton class
class SingleTonClass {
    
    static let staticObj = SingleTonClass()
    
    private init() {
        
    }
    
    func printName() {
        print("My name is Ankush sharma")
    }
    
}


extension ExamplesVC {
    
    func singletonExample() {
        print("\n --------SINGLETON EXAMPLE-------- \n")
        SingleTonClass.staticObj.printName()
    }
}
