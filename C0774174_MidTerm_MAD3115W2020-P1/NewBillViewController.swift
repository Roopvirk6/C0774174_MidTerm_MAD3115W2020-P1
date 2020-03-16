//
//  NewBillViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class NewBillViewController: UIViewController
{
        @IBOutlet weak var txtDate: UITextField!
        @IBOutlet weak var txtTotalAmount: UITextField!
    
    @IBOutlet weak var billType: UITextField!
    @IBOutlet weak var segType: UISegmentedControl!
        @IBOutlet weak var generalLabel1: UILabel!
        @IBOutlet weak var generalLabel2: UILabel!
        @IBOutlet weak var generalLabel3: UILabel!
        @IBOutlet weak var generalLabel4: UILabel!
        @IBOutlet weak var generalLabel5: UILabel!
        @IBOutlet weak var generalTextField1: UITextField!
        @IBOutlet weak var generalTextField2: UITextField!
        @IBOutlet weak var generalTextField3: UITextField!
        @IBOutlet weak var generalTextField4: UITextField!
        @IBOutlet weak var generalTextField5: UITextField!
        let datePicker = UIDatePicker()
        override func viewDidLoad() {
            super.viewDidLoad()
            self.showDatePicker()
            let rightButton = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(   self.saveBill))
            self.navigationItem.rightBarButtonItem = rightButton
            // Do any additional setup after loading the view.
            self.txtDate.resignFirstResponder()
        }
        
        
        func showDatePicker(){
            //Formate Date
            datePicker.datePickerMode = .date
            //ToolBar
            let toolbar = UIToolbar();
            toolbar.sizeToFit()
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
            let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
            let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
            
            toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
            
            txtDate.inputAccessoryView = toolbar
            txtDate.inputView = datePicker
            
        }
        
        @objc func donedatePicker(){
            
            let formatter = DateFormatter()
            formatter.dateFormat = "dd/MM/yyyy"
            txtDate.text = formatter.string(from: datePicker.date)
            self.view.endEditing(true)
        }
        
        @objc func cancelDatePicker(){
            self.view.endEditing(true)
        }
        
        @objc func saveBill(sender: UIBarButtonItem)
        {
        

           
            self.navigationController?.popViewController(animated: true)
        }
        
        @IBAction func segmentBillType(_ sender: UISegmentedControl)
        {
            isegmentValues(index: sender.selectedSegmentIndex)
            }
        
            private func isegmentValues(index: Int)
            {
               
                switch index
                {

            case 0:
                self.billType.text = "Mobile"
                self.generalLabel1.isHidden = false
                self.generalTextField1.isHidden = false
                self.generalLabel2.isHidden = false
                self.generalTextField2.isHidden = false
                self.generalLabel3.isHidden = false
                self.generalTextField3.isHidden = false
                self.generalLabel4.isHidden = false
                self.generalTextField4.isHidden = false
                self.generalLabel5.isHidden = false
                self.generalTextField5.isHidden = false
                self.generalLabel1.text = "Manufacturer Name:"
                self.generalLabel2.text = "Plan Name:"
                self.generalLabel3.text = "Mobile Number:"
                self.generalLabel4.text = "Internet Gb:"
                self.generalLabel5.text = "Minutes"

                
           case 1:
                    
            self.billType.text = "Internet"
                      self.generalLabel1.text = "Provider Name:"
                      self.generalLabel2.text = "Internet GB:"
                      self.generalLabel3.isHidden = true
                      self.generalTextField1.isHidden = true
                      self.generalLabel4.isHidden = true
                      self.generalTextField4.isHidden = true
                      self.generalLabel5.isHidden = true
                      self.generalTextField5.isHidden = true
                    case 2:
                     self.billType.text = "Hydro"
                      self.generalLabel1.text = "Agency Name:"
                      self.generalLabel2.text = "Units Consumed:"
                      self.generalLabel3.isHidden = true
                      self.generalTextField3.isHidden = true
                      self.generalLabel4.isHidden = true
                      self.generalTextField4.isHidden = true
                      self.generalLabel5.isHidden = true
                      self.generalTextField5.isHidden = true
                    default:
                      self.billType.text = ""

               
            
                
        
             print("Mobile")
          }
        }
        

        

}
