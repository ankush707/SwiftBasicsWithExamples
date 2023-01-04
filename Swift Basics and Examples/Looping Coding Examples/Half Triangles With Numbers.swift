//
//  Half Triangles With Numbers.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

extension LoopingStarPrinitingVC {
    
    
    func halfTrianglesWithNumbers() {
        
        print("\n --------HALF TRIANGLE 1-------- \n")
        for i in 1...6 {
            for j in 1...6 {
                if i <= j {
                    print("\(j)", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
        print("\n --------HALF TRIANGLE 2-------- \n")
        for i in 1...6 {
            for j in 1...6 {
                if i >= j {
                    print("\(j)", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
    }
}
