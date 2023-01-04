//
//  Block Strong weak unowned.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

class NetworkRequest {
    // Strong reference to completionHandler, a block
    var completionHandler: ((Data?, Error?) -> Void) = { (_,_) in }
}


class MainClass {
    // Creates a strong reference to an networkRequest instance. When
    // a MainClass instance is deallocated, MainClass will
    // decrease the reference count of the networkRequest instance by 1
    let networkRequest = NetworkRequest()

    // Placeholder used in the following examples
    func hideLoader() {
        print("Loader is hidden here")
    }
}

//MARK: - Strong reference example
extension MainClass {
    // Calling callAPIRequest creates a Retain Cycle because:
    // 1. Self (MainClass) has a strong reference to networkRequest
    // 2. networkRequest has a strong reference to completionHandler
    // 3. completionHandler has a strong reference to self (MainClass)
    func loadWithRetainCycleAPI() {
        networkRequest.completionHandler = { (dataObj, errorObj) in
            self.hideLoader()
        }
    }
}

//MARK: - Weak reference example
extension MainClass {
    // Calling callAPIRequest no longer creates a Retain Cycle:
    // 1. Self (MainClass) has a strong reference to networkRequest
    // 2. networkRequest has a strong reference to completionHandler
    // 3. completionHandler has a weak reference to self (MainClass)
    func loadWithoutRetainCycleAPI() {
        networkRequest.completionHandler = { [weak self] (dataObj, errorObj) in
            self?.hideLoader()
        }
    }
}

//MARK: - Unowned reference example
extension MainClass {
    // Calling callAPIRequest no longer creates a Retain Cycle:
    // 1. Self (MainClass) has a strong reference to networkRequest
    // 2. networkRequest has a strong reference to completionHandler
    // 3. completionHandler has a unowned reference to self (MainClass)
    func callAPIRequest() {
        networkRequest.completionHandler = { [unowned self] (dataObj, errorObj) in
            self.hideLoader()
        }
    }
}
