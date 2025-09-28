//
//  ViewController.swift
//  ViewController_Example
//
//  Created by Kanokchai Amaphut on 21/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var uiSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoToVC2DidTap(_ sender: UIButton) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "VC2") as! ViewController2
        vc2.strData = textField.text!
        vc2.intData = Int(stepper.value)
        vc2.boolData = uiSwitch.isOn
        present(vc2, animated: true, completion: nil)
    }
}

