//
//  Classes.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation
import UIKit

//BASE CLASS
class Parent {
    
    var employeeField: String = "software developer"
    var company: String = "Apple"
    
    func getEmployeeCompany () -> String {
        return employeeField + " working in Apple"
    }
}

//CHILD CLASS for Inheritance example
class Child1: Parent {
    var employeeName: String = "Ankush"
    
    func checkWhatEmployeeWork () -> String {
        return "Application Development Field."
    }
}

//CHILD CLASS FOR overriding example
class Child2: Parent {
    var location: String = "India"
    var income: String = "$ 160000"
    
    func checkIncomeAndSalary () -> String {
        return " He is from " + self.location + " and earn gross income " + self.income + "."
    }
    
    //Overriding the base class here
    override func getEmployeeCompany() -> String {
        return employeeField + " working in Google"
    }
}


//Child Class for Overloading Example
class Child3: Parent {
    
    func getEmployeeCompany(language: String) -> String {
        return self.employeeField + "'s native language is \(language)"
    }
}



//MARK: - EXAMPLE of Inheritance, Overriding and overloading

extension ExamplesVC {
    
    func inheritanceExample() {
        print("\n --------INHERITANCE EXAMPLE-------- \n")
        //Here we will access the the Function of parent class by creating Child1 class object.
        let child1Obj = Child1()
        
        
        print(child1Obj.employeeName + " is " + child1Obj.getEmployeeCompany() + " and working in " + child1Obj.checkWhatEmployeeWork())
        
    }
    
    func overRidingExample() {
        print("\n --------OVERRIDING EXAMPLE-------- \n")
        //Here func from child2 overrides the function of Parent, using Object of child2 Object.
        let child1Obj = Child1()
        let child2Obj = Child2()
        print(child1Obj.employeeName + " is " + child2Obj.getEmployeeCompany() + " and working in " + child1Obj.checkWhatEmployeeWork() + child2Obj.checkIncomeAndSalary())
    }
    
    func overloadingExample() {
        print("\n --------OVERLOADING EXAMPLE-------- \n")      
        let child3Obj = Child3()
        print(child3Obj.getEmployeeCompany())
              print(child3Obj.getEmployeeCompany(language: "Hindi"))
    }
}
