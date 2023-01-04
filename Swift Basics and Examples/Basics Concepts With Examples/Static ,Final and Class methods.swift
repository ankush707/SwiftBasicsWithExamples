//
//  Static and Class Methods.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//MARK: - Static method creation
//1. Can be associated with a class, struct, or enum.
//2. Cannot be overridden by subclass
//3. cannot access the self properties
struct StaticMethod {
   static func defaultValue() -> (Int, Int) {
      return (12, 13)
   }
   var value1: Int
   var value2: Int
}

//MARK: - Static example
//a static function is a type of function that is associated with a type and not with an instance. This means that an instance is not required to call a static function as it can be called from the type itself.
extension ExamplesVC {
    
    func staticMethod() {
        let obj = StaticMethod.defaultValue()
        print("\n --------STATIC METHOD EXAMPLE-------- \n")
        print(obj)
    }
}

//MARK: - Class method creation

//1. Can be associated with a class.
//2. Can overridden by subclass
//3. can access the self properties
class ClassFuncExample {
   class func defaultValue() -> (Int, Int) {
      return (203, 303)
   }
   var value1: Int
   var value2: Int
    
    init(value1: Int, value2: Int) {
        self.value1 = value1
        self.value2 = value2
    }
}

//MARK: - class func example
//A class function is a type of function that is associated with a class and not with an instance. This means that you can call a class function on the class itself, rather than on an instance of the class.
extension ExamplesVC {
    
    func classFunc() {
        print("\n --------CLASS FUNC EXAMPLE-------- \n")
        let obj = ClassFuncExample.defaultValue()
        print(obj.0)
        print(obj.1)
    }
}



//MARK: - Final Class


final class FinalClass {
    
    var string1: String = "Ankush"
}

//ERROR - Final class cannot be inherited - check by uncommenting "finalSubClass"

//This error says it is not possible to inherit from a final class. If you try to subclass any final class in Swift, this is what you should expect to see.

//class finalSubClass : FinalClass {
//
//}
