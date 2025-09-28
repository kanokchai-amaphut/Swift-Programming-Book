//
//  ViewController2.swift
//  Navigation_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

protocol FontStyleDelegate {
    func fontStyle(size: CGFloat, bold: Bool, italic: Bool)
}

class ViewController2: UIViewController {
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var switchBold: UISwitch!
    @IBOutlet weak var switchItalic: UISwitch!
    
    var delegate: FontStyleDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchBold.isOn = true
        switchItalic.isOn = false
        stepper.value = 24
        labelStepper.text = "\(Int(stepper.value))"
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        labelStepper.text = "\(Int(stepper.value))"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let s = CGFloat(stepper.value)
        let b = switchBold.isOn
        let i = switchItalic.isOn
        delegate?.fontStyle(size: s, bold: b, italic: i)
    }
}
