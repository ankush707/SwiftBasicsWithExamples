//
//  Half Triangles With Stars.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation


extension LoopingStarPrinitingVC {
    
    
    func halfTrianglesWithStars() {
        
        print("\n --------HALF TRIANGLE 1-------- \n")
        for i in 0...5 {
            for j in 0...5 {
                if i <= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
        print("\n --------HALF TRIANGLE 2-------- \n")
        for i in 0...5 {
            for j in 0...5 {
                if i >= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
        print("\n --------HALF TRIANGLE 3-------- \n")
        for i in 0...5 {
            let k = 5 - i
            for j in 0...5 {
                if k >= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
        print("\n --------HALF TRIANGLE 4-------- \n")
        for i in 0...5 {
            let k = 5 - i
            for j in 0...5 {
                if k <= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
    }
}
