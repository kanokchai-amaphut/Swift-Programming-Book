//
//  ViewController.swift
//  TicTacToe
//
//  Created by Kanokchai Amaphut on 10/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    var buttons = [UIButton]()
    var currrentPlayer = "O"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // เพิ่มปุ่มลงในอาร์เรย์
        buttons += [button1]
        buttons += [button2]
        buttons += [button3]
        buttons += [button4]
        buttons += [button5]
        buttons += [button6]
        buttons += [button7]
        buttons += [button8]
        buttons += [button9]
        
        for i in 0..<buttons.count {
            buttons[i].setTitle("", for: .normal)
            buttons[i].backgroundColor = UIColor.blue
            buttons[i].tintColor = UIColor.white
            buttons[i].titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            buttons[i].layer.cornerRadius = 10
        }
    }
    @IBAction func buttonDidTap(_ sender: UIButton) {
        if !sender.currentTitle!.isEmpty {
            return
        } else {
            if currrentPlayer == "O" {
                sender.setTitle(self.currrentPlayer, for: .normal)
                self.currrentPlayer = "X"
            } else {
                sender.setTitle(self.currrentPlayer, for: .normal)
                self.currrentPlayer = "O"
            }
        }
    }
}

