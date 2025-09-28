//
//  TableViewCell.swift
//  TableViewlController_Example2
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgFlag: UIImageView!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var code: UILabel!
    @IBOutlet weak var capital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
