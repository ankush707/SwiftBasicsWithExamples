//
//  Higher Order Functions.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension ExamplesVC {
    
    func sortFunction() {
        
        print("\n --------SORTED HIGHER ORDER FUNCTION EXAMPLE-------- \n")
        let firstArr = [1, 3, 4, 6, 7, 8, 6, 1, 2, 4, 3, 5]
        
        let sortingAcendingFirstArr = firstArr.sorted { obj1, obj2 in
            obj1 < obj2
        }
        
        let sortingDecendingFirstArr = firstArr.sorted { obj1, obj2 in
            obj1 > obj2
        }
        print("Original Array : \(firstArr)")
        print("Acending order sorting Array: \(sortingAcendingFirstArr)")
        print("Decending order sorting Array: \(sortingDecendingFirstArr)")
    }
    
    func ReduceFunction() {
        print("\n --------REDUCE HIGHER ORDER FUNCTION EXAMPLE-------- \n")
        let firstArr = [1, 3, 4, 6, 7, 8, 6, 1, 2, 4, 3, 5]
        
        let sumOfFirstArr = firstArr.reduce(0, { partialResult, obj in
            partialResult + obj
        })
        
        let multiplicationOfFirstArrObjects = firstArr.reduce(1, { partialResult, obj in
            partialResult * obj
        })
        print("Original Array : \(firstArr)")
        print("Sum of Array : \(sumOfFirstArr)")
        print("Multiplication Array : \(multiplicationOfFirstArrObjects)")
    }
    
    func filterFunction() {
        print("\n --------FILTER HIGHER ORDER FUNCTION EXAMPLE-------- \n")
        let firstArr = [1, 3, 4, 6, 7, 8, 6, 1, 2, 4, 3, 5]
        
        let filterOfFirstArr = firstArr.filter { obj in
            obj <= 4
        }
        print("Original Array : \(firstArr)")
        print("Array objects which are less then 4: \(filterOfFirstArr)")
    }
    
    func mapFunction() {
        print("\n --------MAP HIGHER ORDER FUNCTION EXAMPLE-------- \n")
        let firstArr = [1, 3, 4, 6, 7, 8, 6, 1, 2, 4, 3, 5]
        
        let mappingOfFirstArr = firstArr.map { obj in
            "seat \(obj)"
        }
        print("Original Array : \(firstArr)")
        print("Array objects converted to string after Mapping: \(mappingOfFirstArr)")
    }
    
    func flatMap() {
        print("\n --------FLAT MAP HIGHER ORDER FUNCTION EXAMPLE-------- \n")
        let firstArr = [[15, 16, 69], [11, 12, 3, 2], [1, 3, 17, 23, 42]]
        let combindedArr = firstArr.flatMap({ $0 })
        let combinedArrWithHighestNumbers = firstArr.flatMap({ $0.filter({ $0 > 10 }) })
        
        print("Original Array : \(firstArr)")
        print("Combined using flat Map Array : \(combindedArr)")
        print("Combined using flat Map Array ,values greater then 10 : \(combinedArrWithHighestNumbers)")
    }
    
    func compactMap() {
        print("\n --------COMPACT MAP HIGHER ORDER FUNCTION EXAMPLE-------- \n")
        let firstArr = [15, 16, 69, 11, 12, 3, 2, 1, nil, 3, 17, 23, 42, nil]
        let combindedArr = firstArr.compactMap { obj in
            obj
        }
        //Nil values removed automatically
        print("Original Array : \(firstArr)")
        print("Compact map Array : \(combindedArr)")
    }
}
