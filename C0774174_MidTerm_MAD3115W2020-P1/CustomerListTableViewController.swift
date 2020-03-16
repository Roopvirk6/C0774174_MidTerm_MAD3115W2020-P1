//
//  CustomerListTableViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private func addLogoutButton()
    {
        let btnLogout=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListTableViewController.logout(sender:)))
        
        navigationItem.leftBarButtonItem=btnLogout
    }
    
    @objc
    func logout(sender: UIBarButtonItem)
    {
        print("logout")
        navigationController?.popViewController(animated: true)
    }
    
    private func addCustomerButton()
       {
        let btnLogout=UIBarButtonItem(title: "ADD", style: .done, target: self, action: #selector(CustomerListTableViewController.addCustomer(sender:)))
           
           navigationItem.rightBarButtonItem=btnLogout
       }
       
       @objc
       func addCustomer(sender: UIBarButtonItem)
       {
           //print("Customer Added")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let addCustomerVC=sb1.instantiateViewController(identifier: "addCustomerVC") as! AddNewCustomerViewController
        navigationController?.pushViewController(addCustomerVC, animated: true)

       }
  var tempvar = Singleton.getInstance()
    
    @IBOutlet weak var customerListTable: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customerListTable.delegate=self
        customerListTable.dataSource=self
      navigationItem.hidesBackButton=true
      
         addLogoutButton()
        addCustomerButton()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let sb1=UIStoryboard(name: "Main", bundle: nil)
               let detailsVC=sb1.instantiateViewController(identifier: "detailsVC") as! CustomerDetailsViewController
        detailsVC.custdetails=tempvar.returnCustObject(custID: indexPath.row+1)!
               navigationController?.pushViewController(detailsVC, animated: true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return tempvar.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = x?.fullName
         return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List of Customers"
    }
    
    override func viewWillAppear(_ animated: Bool) {
           customerListTable.reloadData()
           
       }
    
}

