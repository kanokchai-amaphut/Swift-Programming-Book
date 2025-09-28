//
//  ViewController2.swift
//  CollectionView_Example
//
//  Created by Kanokchai Amaphut on 24/9/2567 BE.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
