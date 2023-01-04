//
//  View Life Cycle.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

//MARK: - ExamplesVC VIEW LIFE CYCLE
extension ExamplesVC {

    func viewDidLoadFunc() {
        
        print("\n --------VIEW LIFE CYCLE of ExampleVC-------- \n")
        print("\(Self.self) - View Did load called")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("\(Self.self) - View will appear called")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("\(Self.self) - View Did Appear called")
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("\(Self.self) - View Will Disappear called")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("\(Self.self) - View Did Disappear called")
    }

    override func viewDidLayoutSubviews() {
        print("\(Self.self) - viewDidLayoutSubviews called")
    }

    override func viewWillLayoutSubviews() {
        print("\(Self.self) - viewWillLayoutSubviews called")
    }
}


//MARK: - LoopingStarPrinitingVC VIEW LIFE CYCLE
extension LoopingStarPrinitingVC {
    
    func viewDidLoadFunc() {
        print("\n --------VIEW LIFE CYCLE of LoopingStarPrinitingVC-------- \n")
        print("\(Self.self) - View Did load called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("\(Self.self) - View will appear called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("\(Self.self) - View Did Appear called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("\(Self.self) - View Will Disappear called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("\(Self.self) - View Did Disappear called")
    }
    
    override func viewDidLayoutSubviews() {
        print("\(Self.self) - viewDidLayoutSubviews called")
    }
    
    override func viewWillLayoutSubviews() {
        print("\(Self.self) - viewWillLayoutSubviews called")
    }
}
