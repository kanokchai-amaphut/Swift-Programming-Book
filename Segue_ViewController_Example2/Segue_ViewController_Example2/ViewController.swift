//
//  ViewController.swift
//  Segue_ViewController_Example2
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class ViewController: UIViewController, SigninDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //สำหรับกรณีที่จะเปิดไปยัง VC2
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewController2
        vc2.delegate = self
    }
    
    //เมธอดของโพรโทคอล สำหรับกำหนดการกระทำเมื่อข้อมูลถูกส่งกลับมา
    func result(success: Bool) {
        var message = success == true ? "ท่านเข้าสู่ระบบแล้ว" : "ไม่สามารถเข้าสู่ระบบได้"
        
        /*
         เนื่องจากเมธอด result() อาจถูกเรียกก่อนที่ View controller จะปรากฏ ซืึ่งหากเราสั่งแสดง Alert ทันที ก็จะมองไม่เห็น ดังนี้ จึงให้เปลี่ยนไปกำหนดคำสั่งในแบบ Closure ให้กับพารามิเตอร์ Completion ของเมธอด dismiss() แทน
         */
        dismiss(animated: true) {
            self.showAlert(msg: message)
        }
    }
    
    func showAlert(msg: String) {
        let alert = UIAlertController(title: "",
                                      message: msg,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

