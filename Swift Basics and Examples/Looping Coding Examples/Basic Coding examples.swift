//
//  Basic Coding examples.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation

extension LoopingStarPrinitingVC {
    
    func evenOdd() {
        
        var evenArr: [Int] = []
        var oddArr: [Int] = []
        
        for i in 1...100 {
            
            if i%2 == 0 {
                evenArr.append(i)
            } else {
                oddArr.append(i)
            }
        }
        print("\n --------EVEN NUMBERS-------- \n")
        print(evenArr)
        print("\n --------ODD NUMBERS-------- \n")
        print(oddArr)
    }
    
    func primeNumbers() {
        
        for i in 1...100 {
            
            var isPrime = true
            if i <= 1 { // number must be positive integer
                isPrime = false
            }
            else if i <= 3 {
                isPrime = true
            }
            else {
                for j in 2...i/2 // here i am using loop from 2 to i/2 because it will reduces the  iteration.
                {
                    if i%j == 0 { // number must have only 1 factor except 1. so use break: no need to check further
                        isPrime = false
                        break
                    }
                }
            }
            if isPrime  {
                print(i)
            }
        }
    }
}
