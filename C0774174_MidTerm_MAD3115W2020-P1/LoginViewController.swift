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
    
    
    
    @IBOutlet weak var switchBtn: UISwitch!
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        readPlist()
        
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
           if sender.tag == 0 //show alert click
                   {
                   let alertController = UIAlertController(title: "Sign in failed", message:
                       "Incorrect email or password", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "cancel", style: .cancel))
                   self.present(alertController, animated: true, completion: nil)
                   }
           
        }
    }
    func readPlist()
    {
        
        if  let bundlePath = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
            {
                
                if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                {
                    if let userList = dictionary["Customer"] as? [[String: String]]
                    {
                        var flag = false
                        for user in userList
                        {
                            if user["Email"] == "abc" && user["Password"] == "abc@123"
                            {
                                flag = true
                            }
                        }
                        if flag == true
                        {
                            print("valid user")
                        }
                        else
                        {
                            print("invalid user")
                        }
                    }
                }
            }

        }

    
}

