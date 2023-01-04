//
//  Dispatch Groups.swift
//  Swift Basics and Examples
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension OtherExamplesVC {
    
    //MARK: - Concurrent Tasks
    func dispatchGroups() {
        print("\n --------Dispatch Group-------- \n")
        // Create a group
        let dispatchGroup = DispatchGroup()
        let queue1 = DispatchQueue(label: "Concurrent Queue 1")
        let queue2 = DispatchQueue(label: "Concurrent Queue 2")
        let queue3 = DispatchQueue(label: "Concurrent Queue 3")
        // Put all queues into dispatchGroup
        queue1.async(group: dispatchGroup) {
          print("Concurrent Queue 1 complete.")
        }
        queue2.async(group: dispatchGroup) {
          print("Concurrent Queue 2 complete.")
        }
        queue3.async(group: dispatchGroup) {
          print("Concurrent Queue 3 complete.")
        }
        // After the queues in dispatchGroup are all done, back to the main thread
        dispatchGroup.notify(queue: DispatchQueue.main) {
          print("All tasks are done.")
        }
    }
}
