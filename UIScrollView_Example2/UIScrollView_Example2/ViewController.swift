//
//  ViewController.swift
//  UIScrollView_Example2
//
//  Created by Kanokchai Amaphut on 21/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.numberOfLines = 0
        label2.numberOfLines = 0
        label3.numberOfLines = 0
        
        label1.text = "This comp is played when offered Shapeshifter Crest early in the game. The comp relies on a tanky front line provided by 8 Shapeshifter that allows Varus and Briar enough time to kill the enemy team."
        label2.text = "This comp is played when offered Shapeshifter Crest early in the game. The comp relies on a tanky front line provided by 8 Shapeshifter that allows Varus and Briar enough time to kill the enemy team."
        label3.text = "This comp is played when offered Shapeshifter Crest early in the game. The comp relies on a tanky front line provided by 8 Shapeshifter that allows Varus and Briar enough time to kill the enemy team."
    }
}

