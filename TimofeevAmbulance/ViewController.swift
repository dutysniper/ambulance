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
    @objc func donePressed() {
        self.view.endEditing(true)
    }
    
    @IBAction func button(_ sender: Any) {
        let answers = [quest1.text, quest2.text, quest3.text, quest4.text, quest5.text]
        var percent = 100
        for items in answers {
            if items == "Нет" {
                percent -= 20
            } else if items == "Не знаю" {
                percent -= 10
            } else { continue }
        }
        result.textAlignment = .center
        result.text = "Вероятность больничного \(percent) %"
    }
    @IBOutlet weak var result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
        pickerView3.delegate = self
        pickerView3.dataSource = self
        pickerView4.delegate = self
        pickerView4.dataSource = self
        
    
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([flexibleSpace, doneButton], animated: true)
        
        quest1.inputAccessoryView = toolBar
        quest1.inputView = pickerView
        quest1.text = "\(quest1.text!) "
        quest2.inputAccessoryView = toolBar
        quest2.inputView = pickerView1
        quest2.text = "\(quest2.text!) "
        quest3.inputAccessoryView = toolBar
        quest3.inputView = pickerView2
        quest3.text = "\(quest3.text!) "
        quest4.inputAccessoryView = toolBar
        quest4.inputView = pickerView3
        quest4.text = "\(quest4.text!) "
        quest5.inputAccessoryView = toolBar
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
        } else if pickerView.tag == 1 {
            return 1
        } else if pickerView.tag == 2 {
            return 1
        } else if pickerView.tag == 3 {
            return 1
        } else {
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return ans1.count
        } else if pickerView.tag == 1 {
            return ans1.count
        } else if pickerView.tag == 2 {
            return ans1.count
        } else if pickerView.tag == 3 {
            return ans1.count
        } else {
            return ans1.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return ans1[row]
        } else if  pickerView.tag == 1 {
            return ans1[row]
        } else if  pickerView.tag == 2 {
            return ans1[row]
        } else if  pickerView.tag == 3 {
            return ans1[row]
        } else {
            return ans1[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            quest1.text = ans1[row]
            quest1.textColor = .blue
        } else if pickerView.tag == 1 {
            quest2.text = ans1[row]
            quest2.textColor = .blue
        } else if pickerView.tag == 2 {
            quest3.text = ans1[row]
            quest3.textColor = .blue
        } else if pickerView.tag == 3 {
            quest4.text = ans1[row]
            quest4.textColor = .blue
        } else {
            quest5.text = ans1[row]
            quest5.textColor = .blue
        }
        
        
    }
}
    



