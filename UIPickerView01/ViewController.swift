//
//  ViewController.swift
//  UIPickerView01
//
//  Created by D7703_07 on 2019. 4. 17..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    var color = ["RED", "GREEN", "BLUE", "WHITE", "YELLOW"]
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
      
    }
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return color[row]
    }
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            print(color[row])
        
        outLabel.text = color[row]
        }
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100.0
    }
}


