//
//  ViewController2.swift
//  ViewController_Example
//
//  Created by Kanokchai Amaphut on 21/9/2567 BE.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var label: UILabel!
    var strData = String()
    var intData = Int()
    var boolData = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Data Passed: \n\n"
        label.text?.append("TextField: \(self.strData) \n")
        label.text?.append("Stepper: \(self.intData) \n")
        label.text?.append("Switch: \(self.boolData) \n")
    }
    
    @IBAction func buttonBackToVC1DidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
