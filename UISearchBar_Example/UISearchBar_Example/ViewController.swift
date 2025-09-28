//
//  ViewController.swift
//  UISearchBar_Example
//
//  Created by Kanokchai Amaphut on 23/9/2567 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var data = [
        "Jenifer, 089123XXXX",
        "Jennie, 088345XXXX",
        "James, 081777XXXX",
        "Jack A, 088900XXXX",
        "Jim, 081999XXXX",
        "Jimmy, 085555XXXX",
        "John L, 088321XXXX",
        "Johny B, 091567XXXX",
        "Joey, 087888XXXX"
    ]
    
    //พร็อปเพอร์ตี้สำหรับเก็บข้อมูลหลังการคัดกรอง ซึ่งเป็นอันที่เราจะนำไปแสดงบน Table View
    var filterData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PrototypeCell")
        filterData = data //เมื่อเริ่มแรก ซึึ่งยังไม่มีการคัดกรอง ให้นำข้อมูลทั้งหมดไปแสดง
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterData.count //จำนวนรายการข้อมูล
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //การแสดงข้อมูลในแต่ละ Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrototypeCell", for: indexPath)
        
        let row = indexPath.row
        //เนื่องจากเราเก็บทั้งชื่อและเบอร์โทร เป็นสติงเดียวกัน ดังนั้น จึงคัดแยก
        //ด้วยเมธอด compoments() เพ่ื่อให้กำหนดตัวคัดแยกในแบบสตริง "," ได้
        let d = filterData[row].components(separatedBy: ", ")
        
        if #available(iOS 14.0, *) {
            var config = cell.defaultContentConfiguration()
            config.image = UIImage(systemName: "phone")
            config.text = d[0]
            config.secondaryText = d[1]
            cell.contentConfiguration = config
        } else {
            cell.textLabel?.text = d[0]
            cell.detailTextLabel?.text = d[1]
        }
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
           filterData = data
        } else {
            filterData = data.filter { item in
                return item.range(of: searchText,
                                  options: .caseInsensitive,
                                  range: nil, locale: nil) != nil
            }
        }
        tableView.reloadData()
    }
}

