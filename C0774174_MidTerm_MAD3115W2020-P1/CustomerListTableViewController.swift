//
//  CustomerListTableViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController {
    
    
    @IBOutlet weak var tblCustomer: UITableView!
    
    var firstName: String!
    var lastName: String!
    var email: String!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        addLogoutButton()
        addNewCustomerButton()

        // Do any additional setup after loading the view.
    }
    
    
    private func addNewCustomerButton()
    {
      let btnAdd = UIBarButtonItem(image: UIImage(systemName: "plus") , style: .plain, target: self, action: #selector(self.add))
      self.navigationItem.rightBarButtonItem = btnAdd
    }
    @objc func add()
    {
      let sb = UIStoryboard(name: "Main", bundle: nil)
       let thirdVC = sb.instantiateViewController(identifier: "thirdVC") as! AddNewCustomerViewController
       
         self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    private func addLogoutButton()
    {
      
      let btnLogout = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(self.logout))
       
      self.navigationItem.leftBarButtonItem = btnLogout
    }
    
    @objc func logout()
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
extension CustomerListTableViewController: UITableViewDataSource, UITableViewDelegate{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
   
  func tableView(in tableview: UITableView) -> Int {
    return 1
  }
   
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "customerCell")
      // let customer = customerArray[indexPath.row]
    
    cell?.textLabel?.text = firstName
    cell?.detailTextLabel?.text = lastName
    
       return cell!
  }
   
}
