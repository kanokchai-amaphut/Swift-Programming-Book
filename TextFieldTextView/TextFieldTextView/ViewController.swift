//
//  ViewController.swift
//  TextFieldTextView
//
//  Created by Kanokchai Amaphut on 11/9/2567 BE.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textPassword2: UITextField!
    @IBOutlet weak var textPasswordMemo: UITextView!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var buttonOK: UIButton!
    @IBOutlet weak var buttonCancel: UIButton!
    let placeHolder = "ข้อความช่วยจำรหัสผ่าน"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textPasswordMemo.delegate = self
        textPasswordMemo.text =  self.placeHolder
        textPasswordMemo.textColor = UIColor.lightGray
        labelMessage.text = ""
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textPasswordMemo.text == self.placeHolder {
            textPasswordMemo.text = ""
            textPasswordMemo.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textPasswordMemo.text == "" {
            textPasswordMemo.text = self.placeHolder
            textPasswordMemo.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func buttonOKDidTap(_ sender: UIButton) {
        labelMessage.textColor = .red
        if textEmail.text!.isEmpty || textPassword.text!.isEmpty || textPassword2.text!.isEmpty || textPasswordMemo.text!.isEmpty {
            labelMessage.text = "ใส่ข้อมูลยังไม่ครบทุกช่อง"
        } else if textPassword.text != textPassword2.text {
            labelMessage.text = "ใส่รหัสผ่านทั้งสองช่องไม่ตรงกัน"
        } else {
            labelMessage.textColor = .black
            labelMessage.text = "เราจัดเก็บข้อมูลของท่านเรียบร้อยแล้วค่ะ"
        }
    }
    
    @IBAction func buttonCancelDidTap(_ sender: UIButton) {
        textEmail.text = ""
        textPassword.text = ""
        textPassword2.text = ""
        textPasswordMemo.text = ""
        labelMessage.text = ""
    }
}

