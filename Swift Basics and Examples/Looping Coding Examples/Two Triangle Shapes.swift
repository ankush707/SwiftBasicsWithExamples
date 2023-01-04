//
//  Two Triangle Shapes.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation


extension LoopingStarPrinitingVC {
    
    func twoTriangleShape1() {
        
        print("\n --------TWO TRIANGLE SHAPE 1-------- \n")
        for i in 0...10 {
            let k = 5 - i
            for j in 0...5 {
                if k >= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            
            for j in 0...5 {
                if i <= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print("", terminator: "\n")
        }
        
        print("\n --------SHAPE TRIANGLE 2-------- \n")
        for i in 0...10 {
            if i <= 5 {
                let k = 5 - i
                for j in 0...5 {
                    if k >= j {
                        print("*", terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
            }
            
            if i > 5 {
                let l = i - 5
                for j in 0...5 {
                    if j <= l {
                        print("*", terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
            }
            print("", terminator: "\n")
        }
         
    }
    
    func twoTriangleShape2() {
        print("\n --------TWO TRIANGLE SHAPE 3-------- \n")
        
        
        for i in 0...5 {
            for j in 0...5 {
                if i >= j {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            
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
