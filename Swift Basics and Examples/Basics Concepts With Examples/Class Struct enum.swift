//
//  Class Struct enum.swift
//  Swift Basics and Examples
//
//  Created by Ankush on 04/01/23.
//

import Foundation

//MARK: - CLASS EXAMPLE
class Candidate {
    
    var name: String
    var location: String
    var infoCandidate: InfoCandidate
    
    init(name: String, location: String, infoCandidate: InfoCandidate) {
        self.name = name
        self.location = location
        self.infoCandidate = infoCandidate
    }
}

//MARK: - STRUCT EXAMPLE
struct InfoCandidate {
    var gender: Gender
    var age: Int
}

//MARK: - ENUM EXAMPLE
enum Gender {
    
    case MALE
    case FEMALE
    case OTHER
}


extension ExamplesVC {
    
    func classEnumStruct() {
        
        let structObj = InfoCandidate(gender: .MALE, age: 23)
        
        let classObj = Candidate(name: "Ankush", location: "Chandigarh", infoCandidate: structObj)
        
        print("\n --------CLASS-------- \n")
        print(classObj)
        print(classObj.name)
        print(classObj.location)
        print(classObj.infoCandidate.gender)
        print(classObj.infoCandidate.age)
        
        print("\n --------STRUCT AND ENUM-------- \n")
        print(structObj)
        print(structObj.gender)
        print(structObj.age)
        
    }
}
