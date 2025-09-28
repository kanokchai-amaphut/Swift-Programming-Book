//
//  ViewController.swift
//  Switch_Segment_Stepper_Slider_Example
//
//  Created by Kanokchai Amaphut on 15/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSample: UILabel!
    @IBOutlet weak var switchSystem: UISwitch!
    @IBOutlet weak var segmentStyle: UISegmentedControl!
    @IBOutlet weak var stepperSize: UIStepper!
    @IBOutlet weak var sliderAlpha: UISlider!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var labelSlider: UILabel!
    var formatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelSample.layer.borderWidth = CGFloat(2)
        labelSample.layer.borderColor = UIColor.lightGray.cgColor
        
        //ปกติค่าของ Stepper จะมีทศนิยม เราควรแปลงให้เป็นจำนวนเต็ม
        labelStepper.text = "\(Int(stepperSize.value))"
        
        //ค่าของ Slider กำหนดให้อยู่ระหว่าง 0-1 ซึ่งควรจัดรูปแบบให้เป็น 0.XX
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 2
        let n = formatter.string(for: sliderAlpha.value)
        labelStepper.text = "\(n!)"
        updateFont()
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        segmentStyle.isEnabled = switchSystem.isOn
        updateFont()
    }
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        updateFont()
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        labelStepper.text = "\(Int(stepperSize.value))"
        updateFont()
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        let n = formatter.string(for: sliderAlpha.value)
        labelSlider.text = "\(n!)"
        updateFont()
    }
    
    func updateFont() {
        var font: UIFont
        let sz = CGFloat(stepperSize.value)
        let idx = segmentStyle.selectedSegmentIndex
        
        if switchSystem.isOn {
            if idx == 0 {
                font = UIFont.systemFont(ofSize: sz)
            } else if idx == 1 {
                font = UIFont.boldSystemFont(ofSize: sz)
            } else {
                font = UIFont.italicSystemFont(ofSize: sz)
            }
        } else {
            font = UIFont(name: "Cochin", size: sz)!
        }
        labelSample.font = font
        let alp = CGFloat(sliderAlpha.value)
        labelSample.textColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: alp)
    }
}

