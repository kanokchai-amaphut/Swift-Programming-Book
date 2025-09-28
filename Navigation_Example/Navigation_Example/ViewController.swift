//
//  ViewController.swift
//  Navigation_Example
//
//  Created by Kanokchai Amaphut on 22/9/2567 BE.
//

import UIKit
import Foundation

class ViewController: UIViewController, FontStyleDelegate {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewController2
        vc2.delegate = self
    }
    
    func fontStyle(size: CGFloat, bold: Bool, italic: Bool) {
        let font = UIFont.systemFont(ofSize: size)
        var traits: UIFontDescriptor.SymbolicTraits = []
        if bold {
            traits.insert(.traitBold)
        }
        
        if italic {
            traits.insert(.traitItalic)
        }
        
        let dsc = font.fontDescriptor.withSymbolicTraits(traits)
        label.font = UIFont(descriptor: dsc!, size: 0)
    }
}

extension UIFont {
    var normal: UIFont {
        guard let dsc = self.fontDescriptor.withSymbolicTraits([]) else {
            return self
        }
        return UIFont(descriptor: dsc, size: 0)
    }
    
    var bold: UIFont {
        guard let dsc = self.fontDescriptor.withSymbolicTraits([.traitBold]) else {
            return self
        }
        return UIFont(descriptor: dsc, size: 0)
    }
    
    var italic: UIFont {
        guard let dsc = self.fontDescriptor.withSymbolicTraits([.traitItalic]) else {
            return self
        }
        return UIFont(descriptor: dsc, size: 0)
    }
}

