//
//  Async and await.swift
//  Swift Basics and Examples
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension OtherExamplesVC {
    
    func awaitAsyncFunction() async throws -> String {
        
        async let downloadImage1 = await self.downloadImage1()
        async let downloadImage2 = await self.downloadImage2()
        async let downloadImage3 = await self.downloadImage3()
        return "Ankush"
    }
    
    func downloadImage1() {
        Thread.sleep(forTimeInterval: 2.0)
    }
    
    func downloadImage2() {
        Thread.sleep(forTimeInterval: 3.0)
    }
    
    func downloadImage3() {
        Thread.sleep(forTimeInterval: 1.0)
    }
}
