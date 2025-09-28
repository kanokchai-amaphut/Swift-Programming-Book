//
//  TableViewCell.swift
//  TableViewlController_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var uiSwitch: UISwitch!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            imgView?.alpha = 1
            label.textColor = UIColor.black
        } else {
            imgView?.alpha = 0.3
            label.textColor = UIColor.gray
        }
    }
}
