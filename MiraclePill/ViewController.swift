//
//  ViewController.swift
//  MiraclePill
//
//  Created by Branko Keleuva on 21/10/2016.
//  Copyright © 2016 Branko Keleuva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var countrytextfield: UITextField!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var zipCodetextfield: UITextField!
    @IBOutlet var container: UIView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        country.isHidden = true
        countrytextfield.isHidden = true
        zipCode.isHidden = true
        zipCodetextfield.isHidden = true
        
    }
    @IBAction func buyBtnPressed(_ sender: Any) {
        //container.isHidden = true
          }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        country.isHidden = false
        countrytextfield.isHidden = false
        zipCode.isHidden = false
        zipCodetextfield.isHidden = false
    }
}

