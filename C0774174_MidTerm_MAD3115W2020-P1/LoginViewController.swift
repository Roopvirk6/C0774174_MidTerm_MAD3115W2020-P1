//
//  ViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func btnSignIn(_ sender: UIBarButtonItem)
    {
        if txtEmail.text == "roop" && txtPassword.text == "roop"
        {
        let sb = UIStoryboard(name: "Main", bundle: nil)
          let secondVC = sb.instantiateViewController(identifier: "secondVC") as! CustomerListTableViewController
           
        self.navigationController?.pushViewController(secondVC, animated: true)
        }
        else
        {
           
        }
    }
    
    
}

