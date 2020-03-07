//
//  AddNewCustomerViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {
    
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    
    
    @IBOutlet weak var txtLastName: UITextField!
    
    
    @IBOutlet weak var txtEmail: UITextField!
    var firstName: String!
    var lastName: String!
    var email: String!
    var cust: Customer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
       

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnbutton(_ sender: UIBarButtonItem)
    {
         firstName = self.txtFirstName.text
         lastName = self.txtLastName.text
         email = self.txtEmail.text
       let sb1 = UIStoryboard(name: "Main", bundle: nil)
          let secondVC = sb1.instantiateViewController(identifier: "customerListVC") as! CustomerListTableViewController
         secondVC.firstName = firstName
         secondVC.lastName = lastName
         secondVC.email = email
       self.navigationController?.pushViewController(secondVC, animated: true)
    
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
