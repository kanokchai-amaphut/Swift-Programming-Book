//
//  ViewController.swift
//  Segue_ViewController_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "image1")
        imageView.alpha = CGFloat(slider.value)
    }
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            imageView.image = UIImage(named: "image1")
        } else if sender.selectedSegmentIndex == 1 {
            imageView.image = UIImage(named: "image2")
        } else {
            imageView.image = UIImage(named: "image3")
        }
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        imageView.alpha = CGFloat(sender.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewController2
        vc2.img = imageView.image!
        vc2.alpha = imageView.alpha
    }
}

