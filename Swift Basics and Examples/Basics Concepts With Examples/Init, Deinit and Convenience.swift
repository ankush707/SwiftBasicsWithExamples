//
//  Init, Deinit and Convenience.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//MARK: - creating convenience class

class ConvenienceClass {
    
    var company : String
    var location : String
    var ctc : String
    
    init(company: String, location: String, ctc: String) {
        self.company = company
        self.location = location
        self.ctc = ctc
    }
    
    convenience init(_ ctc: String, _ location: String) {
        self.init(company: "Google", location: location, ctc: ctc)
    }
    deinit {
        print("deinit called.")
    }
}


extension ExamplesVC {
    func cconvenience1() {

        
        print("\n --------CONVENIENCE EXAMPLE-------- \n")
        
        let objMicroSoft = ConvenienceClass(company: "MicroSoft", location: "Canada", ctc: "20 LPA")
        
        let objYahoo = ConvenienceClass(company: "Yahoo", location: "Spain", ctc: "18 LPA")
        
        let objGoogele1 = ConvenienceClass(company: "Google", location: "England", ctc: "18 LPA")
        let objGoogele2 = ConvenienceClass("30 LPA", "INDIA")
        let objGoogele3 = ConvenienceClass("32 LPA", "PAKISTAN")
        
        
        print(objMicroSoft.company)
        print(objMicroSoft.location)
        print(objMicroSoft.ctc)
        
        print("------------")
        
        print(objYahoo.company)
        print(objYahoo.location)
        print(objYahoo.ctc)
        
        print("------------")
        
        print(objGoogele1.company)
        print(objGoogele1.location)
        print(objGoogele1.ctc)
        
        
        print("------------")
        
        print(objGoogele2.company)
        print(objGoogele2.location)
        print(objGoogele2.ctc)
        
        
        print("------------")
        print(objGoogele3.company)
        print(objGoogele3.location)
        print(objGoogele3.ctc)
        objGoogele3.company   = "Micro"
        print(objGoogele3.company)
    }
}
