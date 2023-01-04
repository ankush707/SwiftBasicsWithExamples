//
//  LoopingStarPrinitingVC.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import Foundation
import UIKit

class LoopingStarPrinitingVC: UIViewController {
    
    var dataPassingHandler: dataPassingWithoutReturnTypeCompletion?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.starExamples()
    }
}


extension LoopingStarPrinitingVC {
    
    func starExamples() {
        self.viewDidLoadFunc()
        self.evenOdd()
        self.primeNumbers()
        self.halfTrianglesWithStars()
        self.halfTrianglesWithNumbers()
        self.printFullTriangles()
        self.twoTriangleShape1()
        self.twoTriangleShape2()
        self.newFourTriangleShape1()
        self.newFourTriangleShape2()
    }
}


extension LoopingStarPrinitingVC {
    
    @IBAction func goBackWithHandlerDataAction(_ sender: Any) {
        self.dataPassingHandler?("Data passed through handler from LoopingStarPrinitingVC", "LoopingStarPrinitingVC")
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goBackWithNSNotificationDataAction(_ sender: Any) {
        let titleDict = ["title":"Data passed through NSNotification Center from LoopingStarPrinitingVC", "fromVC": "LoopingStarPrinitingVC"]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: titleDict)
        self.navigationController?.popViewController(animated: true)
    }
}
