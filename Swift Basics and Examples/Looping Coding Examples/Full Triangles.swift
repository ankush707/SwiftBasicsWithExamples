//
//  Full triangles.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

extension LoopingStarPrinitingVC {
    
    
    func printFullTriangles() {
       
        
        print("\n --------FULL TRIANGLE 1-------- \n")
        for i in 0...6 {
            let k = 6 - i
            for j in 0...6 {
                if k < j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            
            for j in 0...6 {
                if i >= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
        print("\n --------FULL TRIANGLE 1-------- \n")
        for i in 0...6 {
            
            for j in 0...6 {
                if i < j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            
            let k = 6 - i
            for j in 0...6 {
                if k >= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
    }
}
