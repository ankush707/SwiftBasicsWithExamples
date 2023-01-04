//
//  Four Triangle Shapes.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

extension LoopingStarPrinitingVC {
   
    
    func newFourTriangleShape1() {
        print("\n --------SHAPE FOUR TRIANGLES 1-------- \n")
        
        for i in 0...10 {
            
            if i < 6 {
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
            } else {
                let l = i - 5
                for j in 0...5 {
                    if j <= l {
                        print("*", terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
                
                let k = 10 - i
                for j in 0...5 {
                    if k <= j {
                        print("*", terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
            }
            
            
            print("", terminator: "\n")
        }
    }
   
    func newFourTriangleShape2() {
        print("\n --------SHAPE FOUR TRIANGLES 2-------- \n")
        
        for i in 0...10 {
            
            if i < 6 {
                let k = 5 - i
                for j in 0...5 {
                    if k >= j {
                        print(" ", terminator: "")
                    } else {
                        print("*", terminator: "")
                    }
                }
                
                for j in 0...5 {
                    if i < j {
                        print(" ", terminator: "")
                    } else {
                        print("*", terminator: "")
                    }
                }
            } else {
                let l = i - 5
                for j in 0...5 {
                    if j <= l {
                        print(" ", terminator: "")
                    } else {
                        print("*", terminator: "")
                    }
                }
                
                let k = 10 - i
                for j in 0...5 {
                    if k < j {
                        print(" ", terminator: "")
                    } else {
                        print("*", terminator: "")
                    }
                }
            }
            
            
            print("", terminator: "\n")
        }
    }
    
}
