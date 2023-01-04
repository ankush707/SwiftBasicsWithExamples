//
//  OtherExamplesVC.swift
//  Swift Basics
//
//  Created by Ankush on 04/01/23.
//

import Foundation
import UIKit

class OtherExamplesVC: UIViewController {
    
    var delegate: ChangeTitleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.examples()
        
    }
    
}

extension OtherExamplesVC {
    
    func examples() {
        self.escapingClosure()
    }
}

extension OtherExamplesVC {
    
    @IBAction func startDispatchGroupsAction(_ sender: Any) {
        self.dispatchGroups()
    }
    
    @IBAction func startQueuesAction(_ sender: Any) {
        self.dispatchSerialQueue()
    }
    
    @IBAction func goBackDelegateDataAction(_ sender: Any) {
        
        self.delegate?.changeTitleFunc(str: "Data passed through Delegate from OtherExamplesVC",fromVC: "OtherExamplesVC")
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goBackWithNSNotificationDataAction(_ sender: Any) {
        
        let titleDict = ["title":" Data passed through NSNotification Center from OtherExamplesVC", "fromVC": "OtherExamplesVC"]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: titleDict)

        self.navigationController?.popViewController(animated: true)
    }
}
