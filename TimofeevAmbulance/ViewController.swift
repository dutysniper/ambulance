//
//  ViewController.swift
//  TimofeevAmbulance
//
//  Created by Константин Натаров on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quest1: UITextField!
    @IBOutlet weak var quest2: UITextField!
    @IBOutlet weak var quest3: UITextField!
    @IBOutlet weak var quest4: UITextField!
    @IBOutlet weak var quest5: UITextField!
    
    var pickerView = UIPickerView()
    var pickerView1 = UIPickerView()
    var pickerView2 = UIPickerView()
    var pickerView3 = UIPickerView()
    var pickerView4 = UIPickerView()
    let ans1 = ["Да", "Нет", "Не знаю"]
    
    
    @IBAction func button(_ sender: Any) {
      
        
    }
    @IBOutlet weak var result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        quest1.inputView = pickerView
        quest1.text = "\(quest1.text!) "
        quest2.inputView = pickerView1
        quest2.text = "\(quest2.text!) "
        quest3.inputView = pickerView2
        quest3.text = "\(quest3.text!) "
        quest4.inputView = pickerView3
        quest4.text = "\(quest4.text!) "
        quest5.inputView = pickerView4
        quest5.text = "\(quest5.text!) "
        pickerView.tag = 0
        pickerView1.tag = 1
        pickerView2.tag = 2
        pickerView3.tag = 3
        pickerView4.tag = 4
    }
  
    }

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView.tag == 0 {
            return 1
        } else if pickerView1.tag == 1 {
            return 1
        } else if pickerView2.tag == 2 {
            return 1
        } else if pickerView3.tag == 3 {
            return 1
        } else {
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return ans1.count
        } else if pickerView1.tag == 1 {
            return ans1.count
        } else if pickerView2.tag == 2 {
            return ans1.count
        } else if pickerView3.tag == 3 {
            return ans1.count
        } else {
            return ans1.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return ans1[row]
        } else if  pickerView1.tag == 1 {
            return ans1[row]
        } else if  pickerView2.tag == 2 {
            return ans1[row]
        } else if  pickerView3.tag == 3 {
            return ans1[row]
        } else {
            return ans1[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            quest1.text = ans1[row]
            quest1.resignFirstResponder()
        } else if pickerView1.tag == 1 {
            quest2.text = ans1[row]
            quest2.resignFirstResponder()
        } else if pickerView2.tag == 2 {
            quest3.text = ans1[row]
            quest3.resignFirstResponder()
        } else if pickerView3.tag == 3 {
            quest4.text = ans1[row]
            quest4.resignFirstResponder()
        } else {
            quest5.text = ans1[row]
            quest5.resignFirstResponder()
        }
        
        
    }
}
    



