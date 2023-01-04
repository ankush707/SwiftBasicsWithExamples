//
//  Acheiving Inheritance In Structs.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

//MARK: - Inheritence with structs
struct Car2: EngineProtocol {
    var model:String
    var color:String
    let chainrings: Int
    let sprockets: Int
    
    
    init(_ jsonDict: [String : Any]) {
        (model, color) = Car2.parseVehicleFields(jsonDict: jsonDict)
        chainrings = jsonDict[Keys.chainrings] as! Int
        sprockets = jsonDict[Keys.sprockets] as! Int
    }
}

struct Car1: EngineProtocol {
    var model:String
    var color:String
    let chainrings: Int
    let sprockets: Int
    
    init(_ jsonDict: [String : Any]) {
        (model, color) = Car1.parseVehicleFields(jsonDict: jsonDict)
        chainrings = jsonDict[Keys.chainrings] as! Int
        sprockets = jsonDict[Keys.sprockets] as! Int
    }
}


//Protocol
protocol EngineProtocol {
    var model: String { get set }
    var color: String { get set }
}

extension EngineProtocol {
    
    static func parseVehicleFields(jsonDict: [String:Any]) -> (String, String) {
        let model = jsonDict[Keys.model] as! String
        let color = jsonDict[Keys.color] as! String
        return ("Super \(model)", "Common \(color)")
    }
}


//KEYS
struct Keys {
    static let model = "model"
    static let color = "color"
    static let chainrings = "chainrings"
    static let sprockets = "sprockets"
}

//MARK: - inhertiance For Structs func call
extension ExamplesVC {
    
    func inhertianceForStructsDemo() {
        
        print("\n --------INHERITANCE WITH STRUCTS EXAMPLE-------- \n")
        
        let bmwDict = [Keys.model : "BMW" , Keys.color: "White" , Keys.chainrings: 24 , Keys.sprockets: 3] as [String : Any]

        let ferariDict = [Keys.model : "Ferari" , Keys.color: "Red" , Keys.chainrings: 26 , Keys.sprockets: 4] as [String : Any]

        let objCar1 = Car1.init(bmwDict)
        let objCar2 = Car2.init(ferariDict)


        print(objCar1)
        print(objCar2)
        
        
    }
}
