//
//  Optionals - chaining,if let and gaurd statement.swift.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

class Employee {
    //simple var
    var company: String
    //optional
    var info: Info?
    
    init(company: String, info: Info) {
        self.company = company
        self.info = info
    }
}

class Info {
    //simple var
    var name: String?
    //optional
    var location: String?
    
    init(name: String?, location: String?) {
        self.name = name
        self.location = location
    }
}

extension ExamplesVC {
    
    func optionals() {
        
        print("\n --------OPTIONALs-------- \n")
        
        let obj1 = Employee.init(company: "Apple", info: Info.init(name: nil, location: "Mohali"))
        
        //MARK: - Optional Chaining
        print(obj1)
        print(obj1.info?.name)
        
        let obj2 = Employee.init(company: "Google", info: Info.init(name: "Ankush", location: nil))

        print(obj2.info?.name)
        //MARK: - if let statement
        if let nameObj = obj2.info?.name, nameObj == "Ankush" { // unwapping and comparision
            print("Name is \(nameObj)")
        } else {
            obj2.info?.name = "Ankush"
        }
        
        //MARK: - Gaurd let
        let obj3 = Employee.init(company: "Microsoft", info: Info.init(name: "last name is Sharma", location: nil))
        
        guard let name = obj3.info?.name else { return }
        
        print(name)
        
        //The location is nil , so it not print location and return funtion
        guard let location = obj3.info?.location else { return }
        
        print(location)
    }
    
}
