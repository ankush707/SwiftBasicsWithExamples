//
//  Delegates Example.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation

extension ExamplesVC: ChangeTitleProtocol {
    func changeTitleFunc(str: String, fromVC: String) {
        self.datachangeLbl.text = str
        if fromVC == "LoopingStarPrinitingVC" {
            self.datachangeLbl.textColor = .systemRed
        } else {
            self.datachangeLbl.textColor = .systemTeal
        }
    }
}
