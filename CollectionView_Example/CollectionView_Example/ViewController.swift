//
//  ViewController.swift
//  CollectionView_Example
//
//  Created by Kanokchai Amaphut on 24/9/2567 BE.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    let images = ["pencil", "eraser", "phone", "flower4", "trash", "folder", "tray", "doc", "home", "menu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        let i = indexPath.item
        item.imageView.image = UIImage(systemName: images[i])
        item.label.text = "่ภาพ \(i + 1)"
        return item
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let idx = collectionView.indexPathsForSelectedItems![0]
        let item = collectionView.cellForItem(at: idx) as! CollectionViewCell
        
        let destVC = segue.destination as! ViewController2
        destVC.image = item.imageView.image!
    }
    
}

