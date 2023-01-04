//
//  Typealias .swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

//A type alias allows you to provide a new name for an existing data type into your program. After a type alias is declared, the aliased name can be used instead of the existing type throughout the program.

//Set is created as a new name

typealias simpleSet = Set<Int>
typealias simpleArray = Array<Int>

//MARK: - Touple, Any, Anyobject

// Here Any is used :- Any can represent an instance of any type at all, including function types and optional types.
//AnyObject : - AnyObject can represent an instance of any class type

typealias simpleTouple = (Int, Int, String, Array<Int>, [String: AnyObject], String)

//MARK: - completion handler is created

//completion without return type
typealias dataPassingWithoutReturnTypeCompletion = (String,String) -> ()

//completion with return type
typealias dataPassingWithReturnTypeCompletion = (String) -> (Int)
