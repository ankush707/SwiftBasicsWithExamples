//
//  Optional Protocols.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//MARK: - Optional Protocols

protocol BaseProtocol {
    func requiredProtocolFunc()
}

extension BaseProtocol {
    
    func defaultBaseProtocolMethod() {
        print("Default base protocol method")
    }
}

//Inheriting the base protocol
class FirstProtocol:BaseProtocol  {
    func requiredProtocolFunc() {
        print("Required first protocol")
    }
    
    func optionalProtocolFunc() {
        print("Optional first protocol")
    }
    
}



extension ExamplesVC {
    
    func optionalProtocolsFunc() {
        print("\n --------OPTIONAL PROTOCOL EXAMPLE (achieving abstraction)-------- \n")
        
        let obj1 = FirstProtocol()
        obj1.requiredProtocolFunc()
        obj1.optionalProtocolFunc()
        obj1.defaultBaseProtocolMethod()
        
    }
}
