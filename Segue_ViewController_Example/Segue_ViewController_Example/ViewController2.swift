//
//  ViewController2.swift
//  Segue_ViewController_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var img = UIImage()
    var alpha = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = self.img
        imageView.alpha = self.alpha
    }
    
    @IBAction func buttonBackDidTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
