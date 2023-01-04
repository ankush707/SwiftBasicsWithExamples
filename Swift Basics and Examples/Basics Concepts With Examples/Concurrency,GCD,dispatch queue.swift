//
//  Concurrency.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension OtherExamplesVC {
    
    func dispatchSerialQueue() {
        print("\n --------Serial Queue-------- \n")
        let serialQueue = DispatchQueue(label: "Serial queue")
        
        serialQueue.async {
            print("1st Serial Task started")
            // Do some work..
            print("Delay of 1.5 seconds of 1st Serial task")
            Thread.sleep(forTimeInterval: 1.5)
            print("Serial Task completed after 1.5 seconds")
            
            print("1st Serial Task finished")
        }
        serialQueue.async {
            print("2nd Serial Task started")
            // Do some work..
            print("2nd Serial Task finished")
            
            self.dispatchConcurrentQueue()
        }
        
    }
    
    func dispatchConcurrentQueue() {
        print("\n --------Concurrent Queue-------- \n")
        let serialQueue = DispatchQueue(label: "Concurrent queue", attributes: .concurrent)
        
        serialQueue.async {
            print("1st Concurrent Task started")
            // Do some work..
            print("Delay of 2 seconds of 1st Concurrent task")
            Thread.sleep(forTimeInterval: 2.0)
            print("Concurrent Task completed after 2 seconds")
            print("1st Concurrent Task finished")
            self.queuesOnMainThread()
        }
        serialQueue.async {
            print("2nd Concurrent Task started")
            // Do some work..
            print("2nd Concurrent Task finished")
            
        }
    }
    
    //Use this to update UI
    func queuesOnMainThread() {
        
        print("\n --------Main thread sync Queue-------- \n")
        DispatchQueue.main.sync {
            print("Main thread sync call")
        }
        
        print("\n --------Main thread async Queue-------- \n")
        DispatchQueue.main.async {
            print("Main thread async call")
        }
        
        print("\n --------Main thread async with delay Queue-------- \n")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { // Change `2.0` to the desired number of seconds.
            // Code you want to be delayed
            print("Main thread async func after 1.5 seconds delay call")
        }
        self.queuesOnBackgroundConcurrentThread()
        
    }
    
    func queuesOnBackgroundConcurrentThread() {
        
        print("\n --------Background Concurrent thread sync Queue-------- \n")
        DispatchQueue.global().sync {
            print("Background Concurrent thread sync call")
        }
        
        print("\n --------Background Concurrent thread async Queue-------- \n")
        DispatchQueue.global().async {
            print("Background Concurrent thread async call")
        }
        
        print("\n --------Background Concurrent thread - UserInitiated async Queue-------- \n")
        DispatchQueue.global(qos: .userInitiated).async {
            print("Background Concurrent thread - UserInitiated async call")
        }
        
        print("\n --------Background Concurrent thread - unspecified async Queue-------- \n")
        DispatchQueue.global(qos: .unspecified).async {
            print("Background Concurrent thread - unspecified async call")
        }
        
        print("\n --------Background Concurrent thread - userInteractive async Queue-------- \n")
        DispatchQueue.global(qos: .userInteractive).async {
            print("Background Concurrent thread - userInteractive async call")
        }
        
        print("\n --------Background Concurrent thread - default async Queue-------- \n")
        DispatchQueue.global(qos: .default).async {
            print("Background Concurrent thread - default async call")
        }
        
        print("\n --------Background Concurrent thread - utility async Queue-------- \n")
        DispatchQueue.global(qos: .utility).async {
            print("Background Concurrent thread - utility async call")
        }
        
        print("\n --------Background Concurrent thread - background async Queue-------- \n")
        DispatchQueue.global(qos: .background).async {
            print("Background Concurrent thread - background async call")
        }
    }
}


