//
//  ViewController.swift
//  TableViewlController_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var item = String()
    var isOn = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let i = (isOn) ? "On" : "Off"
        label.text = "\(item) : \(i)"
    }
}

