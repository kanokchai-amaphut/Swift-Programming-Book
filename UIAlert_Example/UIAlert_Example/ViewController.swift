//
//  ViewController.swift
//  UIAlert_Example
//
//  Created by Kanokchai Amaphut on 15/9/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    var randomNum: UInt32 = 0
    var count: UInt8 = 0       //นับจำนวนครั้งที่หาย
    let maxGuest = 7    //ให้ทายได้ไม่เกินกี่ครั้ง
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btStartGameDidTap( _ sender: UIButton) {
        //สร้างเลขสุ่มระหว่าง 1-100
        self.randomNum = 1 + arc4random_uniform(100)
        self.count = 0
        showTextFieldAlert()
    }
    
    //เมธอดสำหรับแสดง Alert แบบมี TextField
    func showTextFieldAlert() {
        self.count += 1
        let alert = UIAlertController(title: "",
                                      message: "กรุณาใส่ตัวเลข 1-100 (ทายครั้งที่ \(self.count)",
                                      preferredStyle: .alert)
        
        alert.addTextField { tf in
            tf.clearButtonMode = .always
            tf.keyboardType = .numberPad
        }
        
        let action = UIAlertAction(title: "OK", style: .destructive) { _ in
            let text = alert.textFields?.first?.text
            self.checkNumber(num: text) //นำเลขไปตรวจสอบ
        }
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    //เมธอดสำหรับตรวจสอบตัวเลขที่หาย
    func checkNumber(num: String?) {
        guard let guestNum = UInt32(num!) else {    //ถ้าไม่ใส่ค่าอะไรเลย ให้จบเกม
            showMessage(msg: "เกมถูกยกเลิก", stop: true)
            return
        }
        
        if guestNum == self.randomNum {
            showMessage(msg: "ถูกต้อง", stop: true)
        } else if guestNum < self.randomNum {
            showMessage(msg: "มากกว่า", stop: false)
        } else if guestNum > self.randomNum {
            showMessage(msg: "น้อยกว่า", stop: false)
        }
    }
    
    //เมธอดสำหรับแสดง Alert แบบข้อความ โดยพารามิเตอร์ stop ใช้เพื่อบ่งชี้ว่าเราจะหยุดเกมหรือไม่
    func showMessage(msg: String, stop: Bool) {
        let alert = UIAlertController(title: "",
                                      message: msg,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: { _ in
            if !stop && self.count < self.maxGuest {
                self.showTextFieldAlert()
                return
            }
            
            if self.count == self.maxGuest {
                let m = "คุณทายครบ \(self.maxGuest) " + "ครั้งที่แล้ว \nเกมถูกยกเลิก"
                self.showMessage(msg: m, stop: true)
                self.count += 1
            }
        })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

