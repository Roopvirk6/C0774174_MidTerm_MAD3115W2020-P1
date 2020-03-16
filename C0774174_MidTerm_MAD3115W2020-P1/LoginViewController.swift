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
        let getdata = Singleton.getInstance()
                      getdata.createCust()
        
        
    }

    
    @IBAction func btnSignIn(_ sender: UIBarButtonItem)
   {
     if let bundlePath = Bundle.main.path(forResource: "Users", ofType: "plist")
     {
        if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
        {
            if let customers = dictionary["Customer"] as? [[String:String]]
            {
               // print(customers)
                var flag = false
                for user in customers{
            
                    if user["Email"] == txtEmail.text && user["Password"] == txtPassword.text
                    {
                       
                        flag = true
                    }}
                         if flag == true{
                                           print("Valid user")
                             let sb = UIStoryboard(name: "Main", bundle: nil)
                            
                                                    let secondVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListTableViewController
                            
                                                    self.navigationController?.pushViewController(secondVC, animated: true)
                                       }
                                       else{
                                           print("Invalid user")
                            let alertController = UIAlertController(title: "Login Failed", message:"Incorrect Email or Password", preferredStyle: .alert)

                                                   alertController.addAction(UIAlertAction(title: "Try Again", style: .cancel))

                                                   self.present(alertController, animated: true, completion: nil)
                                       }
                }
   
                }
            }
    
        }
    }


