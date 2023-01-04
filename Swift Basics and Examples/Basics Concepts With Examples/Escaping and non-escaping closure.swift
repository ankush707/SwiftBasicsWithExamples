//
//  Escaping and non-escaping closure.swift
//  Swift Basics and Examples
//
//  Created by Ankush on 04/01/23.
//

import Foundation

class TaskManager
{
    var onTaskFinished:(() -> Void)?
    
    func startLengthyTask(completionHandler: @escaping () -> Void)
    {
        // Store completion handler for later
        onTaskFinished = completionHandler
        
        // Do lengthy task
        // …
        for i in 0...4 {
            print(i)
        }
        Thread.sleep(forTimeInterval: 0.02)
        self.onLengthyTaskFinished()
    }
    
    func onLengthyTaskFinished() {
        onTaskFinished?() // Call completion handler
        print("Lengthy task finished - it will redirect to main closure")
    }
}

extension OtherExamplesVC {
    
    func escapingClosure() {
        print("\n --------Escaping Closure-------- \n")
        let task = TaskManager()
        task.startLengthyTask(completionHandler: {
            // Do this when task has finished…
            print("Content from main escaping closure")
        })
    }
}
