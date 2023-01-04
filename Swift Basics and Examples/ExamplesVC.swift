//
//  ExamplesVC.swift
//  Swift Basics
//
//  Created by Ankush on 03/01/23.
//

import UIKit

protocol ChangeTitleProtocol {
    func changeTitleFunc(str: String, fromVC: String)
}

//HERE We implements to protocol for changing title
class ExamplesVC: UIViewController {

    @IBOutlet weak var datachangeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.examples()
    }
}


//MARK: - ALL EXAMPLES
extension ExamplesVC {
    func examples() {
        self.viewDidLoadFunc()
        self.classEnumStruct()
        self.addNotificationObserver()
        self.selfSelfFunc()
        self.inheritanceExample()
        self.overRidingExample()
        self.overloadingExample()
        self.mutatingExample()
        self.staticMethod()
        self.classFunc()
        self.singletonExample()
        self.cconvenience1()
        self.optionalProtocolsFunc()
        self.optionals()
        self.deferImplementation()
        self.lazyVariablesFunc()
        self.sortFunction()
        self.ReduceFunction()
        self.filterFunction()
        self.mapFunction()
        self.flatMap()
        self.compactMap()
    }
}

extension ExamplesVC {
    
    //MARK: - Move to next screen with Handler
    @IBAction func gotToLoopStarPrintingVC(_ sender: Any) {
        
        let vc: LoopingStarPrinitingVC = self.storyboard?.instantiateViewController(withIdentifier: "LoopingStarPrinitingVC") as! LoopingStarPrinitingVC
        vc.dataPassingHandler = { (titleStr,vcStr) in
            self.datachangeLbl.text = titleStr
            if vcStr == "LoopingStarPrinitingVC" {
                self.datachangeLbl.textColor = .systemRed
            } else {
                self.datachangeLbl.textColor = .systemTeal
            }
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: - Move to next screen with delegate
    @IBAction func goNextExamplesAction(_ sender: Any) {
        
        let vc: OtherExamplesVC = self.storyboard?.instantiateViewController(withIdentifier: "OtherExamplesVC") as! OtherExamplesVC
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
