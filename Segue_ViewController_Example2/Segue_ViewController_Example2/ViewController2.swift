//
//  ViewController2.swift
//  Segue_ViewController_Example2
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

protocol SigninDelegate {
    func result(success: Bool)
}

class ViewController2: UIViewController {
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    var delegate: SigninDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonOkDidTap(_ sender: Any) {
        let login = textFieldLogin.text!
        let password = textFieldPassword.text!
        
        if login == "abc" && password == "456" {
            delegate?.result(success: true)
        } else {
            delegate?.result(success: false)
        }
    }
}
