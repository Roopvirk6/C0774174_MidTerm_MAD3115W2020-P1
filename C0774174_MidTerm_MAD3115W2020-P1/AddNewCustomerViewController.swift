//
//  AddNewCustomerViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {
    
    
    @IBOutlet weak var txtCustomerName: UITextField!
    
    
    
    @IBOutlet weak var txtCustomerEmail: UITextField!
    
    
    @IBOutlet weak var txtCustomerPhoneNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        addSaveButton()

        // Do any additional setup after loading the view.
    }
    
    
    private func addSaveButton()
    {
        let btnAdd1 = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(self.save) )
      self.navigationItem.rightBarButtonItem = btnAdd1
    }
    @objc func save()
    {
      
       
         self.navigationController?.popViewController(animated: true)
    }
    
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
