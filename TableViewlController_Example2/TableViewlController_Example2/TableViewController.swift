//
//  TableViewController.swift
//  TableViewlController_Example2
//
//  Created by Kanokchai Amaphut on 23/9/2567 BE.
//

import UIKit

class TableViewController: UITableViewController {
    let sections = ["Asia", "Europe", "North America"]
    let data = [
        [["Thailand", "Bangkok", "66"],
         ["Japan", "Tokyo", "81"],
         ["Korea", "Seoul", "82"],
         ["China", "Beijing", "86"]],
        
        [["UK", "London", "44"],
         ["France", "Paris", "33"],
         ["Germany", "Berlin", "49"],
         ["Italy", "Rome", "39"]],
        
        [["USA", "Washington", "1"],
         ["Canada", "Ottawa", "1"]]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as? UITableViewHeaderFooterView
        header?.backgroundView?.backgroundColor = .cyan
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrototypeCell",
                                                 for: indexPath) as! TableViewCell
        
        let section = indexPath.section
        let row = indexPath.row
        //ชื่อภาพตรงกับชื่อประเทศ แต่เขียนเป็นตัวพิมพ์เล็ก
        let imgName = data[section][row][0].lowercased()
        cell.imgFlag.image = UIImage(named: imgName)
        cell.country.text = data[section][row][0]
        cell.capital.text = data[section][row][1]
        cell.code.text = data[section][row][2]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
        
        let alert = UIAlertController(title: cell.country.text,
                                      message: cell.capital.text,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
