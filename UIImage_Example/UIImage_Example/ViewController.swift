//
//  ViewController.swift
//  UIImage_Example
//
//  Created by Kanokchai Amaphut on 21/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchShowBorder: UISwitch!
    @IBOutlet weak var segmentMode: UISegmentedControl!
    @IBOutlet weak var imageViewBig: UIImageView!
    @IBOutlet weak var imageLeft: UIImageView!
    @IBOutlet weak var imageCenter: UIImageView!
    @IBOutlet weak var imageRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentMode.selectedSegmentIndex = 0
        imageViewBig.image = imageLeft.image
        imageViewBig.contentMode = .scaleAspectFit
        switchShowBorder.isOn = false
        
        let g1 = UITapGestureRecognizer(target: self, action: #selector(self.imageLeftDidTap))
        imageLeft.addGestureRecognizer(g1)
        imageLeft.isUserInteractionEnabled = true
        
        let g2 = UITapGestureRecognizer(target: self, action: #selector(self.imageCenterDidTap))
        imageCenter.addGestureRecognizer(g2)
        imageCenter.isUserInteractionEnabled = true
        
        let g3 = UITapGestureRecognizer(target: self, action: #selector(self.imageRightDidTap))
        imageRight.addGestureRecognizer(g3)
        imageRight.isUserInteractionEnabled = true
    }
    
    @objc func imageLeftDidTap() {
        imageViewBig.image = imageLeft.image
    }
    
    @objc func imageCenterDidTap() {
        imageViewBig.image = imageCenter.image
    }
    
    @objc func imageRightDidTap() {
        imageViewBig.image = imageRight.image
    }
    
    @IBAction func switchShowBorderDidChange(_ sender: UISwitch) {
        if switchShowBorder.isOn {
            imageViewBig.layer.borderWidth = CGFloat(2)
            imageViewBig.layer.borderColor = UIColor.lightGray.cgColor
        } else {
            imageViewBig.layer.borderWidth = CGFloat(0)
        }
    }
    
    @IBAction func segmentedDidChange(_ sender: UISegmentedControl) {
        let index = segmentMode.selectedSegmentIndex
        if index == 0 {
            imageViewBig.contentMode = .scaleAspectFit
        } else if index == 1 {
            imageViewBig.contentMode = .scaleAspectFill
        } else {
            imageViewBig.contentMode = .scaleToFill
        }
    }
}

