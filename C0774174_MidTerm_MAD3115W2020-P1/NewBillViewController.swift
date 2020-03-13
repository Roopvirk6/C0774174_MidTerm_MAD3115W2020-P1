//
//  NewBillViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class NewBillViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var label3: UILabel!
    
    
    
    @IBOutlet weak var label4: UILabel!
    
    
    @IBOutlet weak var label5: UILabel!
    
    
    
    @IBOutlet weak var txtField1: UITextField!
    
    
    @IBOutlet weak var txtField2: UITextField!
    
    
    @IBOutlet weak var txtField3: UITextField!
    
    
    @IBOutlet weak var txtField4: UITextField!
    
    
    
    @IBOutlet weak var txtField5: UITextField!
    
    
    let pickerTypes = ["Mobile", "Internet", "Hydro"]
    
    
    
    
    @IBOutlet weak var pickerType: UIPickerView!
    
    
    
    @IBOutlet weak var billId: UITextField!
    
    
    @IBOutlet weak var billType: UITextField!
    
    
    @IBOutlet weak var billDate: UITextField!
    
    
    @IBOutlet weak var billAmount: UITextField!
    
    
    var datePicker : UIDatePicker!
    
    
    @IBAction func saveBtn(_ sender: UIBarButtonItem)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
         let billListVC = sb.instantiateViewController(identifier: "ShowBillDetailsVC") as! BillViewController
         
        self.navigationController?.pushViewController(billListVC, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerType.delegate = self
        self.pickerType.dataSource = self

        // Do any additional setup after loading the view.
    }
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
      self.pickUpDate(self.billDate)
    }
    func pickUpDate(_ textField : UITextField){
      
      // DatePicker
      self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
      self.datePicker.backgroundColor = UIColor.white
      self.datePicker.datePickerMode = UIDatePicker.Mode.date
      textField.inputView = self.datePicker
      
      // ToolBar
      let toolBar = UIToolbar()
      toolBar.barStyle = .default
      toolBar.isTranslucent = true
      toolBar.tintColor = .red//UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
      toolBar.sizeToFit()
      
      // Adding Button ToolBar
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(NewBillViewController.doneClick))
      let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
      let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(NewBillViewController.cancelClick))
      toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
      toolBar.isUserInteractionEnabled = true
      textField.inputAccessoryView = toolBar
      
    }
    @objc func doneClick() {
      let dateFormatter1 = DateFormatter()
      dateFormatter1.dateStyle = .medium
      dateFormatter1.timeStyle = .none
      billDate.text = dateFormatter1.string(from: datePicker.date)
      billDate.resignFirstResponder()
    }
    
    @objc func cancelClick() {
      billDate.resignFirstResponder()
    }

    
    
//let pickerTypes = ["Hydro", "Internet" , "Mobile"]

func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return self.pickerTypes.count
}

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
{
    
        return Array(self.pickerTypes)[row]
    
    
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
{
    let row1 = pickerType.selectedRow(inComponent: 0)
    
    
    let v1 = Array(self.pickerTypes)[row]
    
    
    billType.text = "\(v1)"
    
      switch row1
      {
      case 0:
        self.billType.text = "Mobile"
        self.label1.isHidden = false
        self.txtField1.isHidden = false
        self.label2.isHidden = false
        self.txtField2.isHidden = false
        self.label3.isHidden = false
        self.txtField3.isHidden = false
        self.label4.isHidden = false
        self.txtField4.isHidden = false
        self.label5.isHidden = false
        self.txtField5.isHidden = false
        self.label1.text = "Manufacturer Name:"
        self.label2.text = "Plan Name:"
        self.label3.text = "Mobile Number:"
        self.label4.text = "Internet Gb:"
        self.label5.text = "Minutes"
         
      case 1:
        self.billType.text = "Internet"
        self.label1.text = "Provider Name:"
        self.label2.text = "Internet GB:"
        self.label3.isHidden = true
        self.txtField3.isHidden = true
        self.label4.isHidden = true
        self.txtField4.isHidden = true
        self.label5.isHidden = true
        self.txtField5.isHidden = true
      case 2:
        self.billType.text = "Hydro"
        self.label1.text = "Agency Name:"
        self.label2.text = "Units Consumed:"
        self.label3.isHidden = true
        self.txtField3.isHidden = true
        self.label4.isHidden = true
        self.txtField4.isHidden = true
        self.label5.isHidden = true
        self.txtField5.isHidden = true
      default:
        self.billType.text = ""
      }
    }

    
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


