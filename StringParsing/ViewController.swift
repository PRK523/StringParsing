//
//  ViewController.swift
//  StringParsing
//
//  Created by Pranoti R on 5/17/18.
//  Copyright © 2018 Pranoti R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNum: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        minFromString(str: "8,9, , 12, 2,7,, 19, 3, 4, 11, 14, 28")
    }
    
    func minFromString(str: String) -> Int? {
        let strArr = str.split(separator: ",")
        
        var ares = [Int]()
        for item in strArr {
            let components = item.components(separatedBy: CharacterSet.decimalDigits.inverted)
            let part: String = components.joined()
            if let intVal = Int(part) {
                ares.append(intVal)
            }
        }
        print(ares)
        let min = ares.min()
        DispatchQueue.main.async {
            self.labelNum.text? = String(describing: min!)
        }
        return min
    }
    
}

