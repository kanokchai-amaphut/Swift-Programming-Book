//
//  TableViewController.swift
//  TableViewlController_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let i = tableView.indexPathForSelectedRow
        let cell = tableView.cellForRow(at: i!) as! TableViewCell
        let text = cell.label.text!
        let isOn = cell.uiSwitch.isOn
        
        //ถ้าคลาสของ VC ปลายทางชื่อ ViewController
        let destVC = segue.destination as! ViewController
        destVC.item = text
        destVC.isOn = isOn
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToVC1Segue", sender: self)
    }
}
