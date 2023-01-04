//
//  NSNotificationCentre.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension ExamplesVC {
    
    func addNotificationObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.observeDataChanged(_:)), name: NSNotification.Name(rawValue: "notificationName"), object: nil)


    }
    
    @objc func observeDataChanged(_ notification: NSNotification) {
        if let title = notification.userInfo?["title"] as? String {
            // do something with your image
            
            self.datachangeLbl.text = title
        }
        
        if let fromVC = notification.userInfo?["fromVC"] as? String {
            // do something with your image
            if fromVC == "LoopingStarPrinitingVC" {
                self.datachangeLbl.textColor = .systemRed
            } else {
                self.datachangeLbl.textColor = .systemTeal
            }
        }
    }
}
